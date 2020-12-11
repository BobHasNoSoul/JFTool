
# JFTool

```
       ______________            __"
      / / ____/_  __/___  ____  / /"
 __  / / /_    / / / __ \/ __ \/ / "
/ /_/ / __/   / / / /_/ / /_/ / /  "
\____/_/     /_/  \____/\____/_/  

JFTool v4.0
```

JFTool now works with 10.7 at a slimmed down rate (more features to be added in the future for 10.7.x versions)
- Change Page Title (working)
- Replace Logos (Working)
- Dynamic Login Background (Working)
- Custom links in sidebar / logo in side bar (working)

we have a few changes to the folder layout, but they are all pretty much the same as before you just need to navigate to the version you want to apply it to and run the tool for the specified operating system (some have more features and some do not).

JFTool may be untested for your operating system please use with caution and expect bugs in the lastest versions (not breaking bugs) but errors in the code because i have a very odd way of porting this to each deployment of jellyfin (might ditch cygwin support at some point for WSL overall because it is simply easier to work with).

if you get permission issues on linux you may need to chmod +x for the files you require (i would do this by default but this is a bit more transparent so the end user can only activate the ones they wish to activate)


# Instructions

### Linux instructions

- Download the this as a zip, you know that big green button sat in the top right (its just easier than me pushing zip after zip).
- Extract the file to your machine with the jellyfin install on it.
- Edit the images inside the images folder with your favorite image editor and replace them with your own images with the same dimensions (or go wild and change the dimensions.. but if you do your mileage may vary).
- Stop jellyfin from running `sudo service jellyfin stop`
- run `./run.sh`
- select your options you want to apply from the numbered menu
- once done exit the program using option 8 on the menu or pressing ctrl+c 
- restart you jellyfin install with `sudo service jellyfin start

Note: you may be able to modify these without stopping jellyfin server but i would reccomend for sanitys sake when
modifying any files you stop the server, make the edits, then start it again.

**Some browsers will require you to clear the cache to display properly after changing the images like favicon and page title to do this you should use the settings privacy content and clear the cache or use inprivate browsing / incognito mode to see what the outside world will see**

### Docker Linux instructions

<img src="https://cdn.worldvectorlogo.com/logos/docker.svg" width=400 height=200> <img src="https://i.pinimg.com/originals/cb/bf/f3/cbbff3649adc9c2fda291b35dcfdaf14.jpg">

Firstly make the dirs needed to mount the web files 
```
sudo mkdir ${HOME}/Docker && sudo mkdir ${HOME}/Docker/jellyfin && sudo mkdir ${HOME}/Docker/jellyfin/jellyfin-web
```
Now we have done that we will have to make a mount that reflects the containers content on the host :)
```
  sudo docker volume create --driver local \
    --opt type=none \
    --opt device=${HOME}/Docker/jellyfin/jellyfin-web \
    --opt o=bind \
    tool_vol
```
now if jellyfin is not running as a container run this in one terminal window 

```
sudo docker run -it -v tool_vol:/jellyfin/jellyfin-web jellyfin/jellyfin
```

now you just need to open another terminal window (leaving the one you was just in open and running) 
and run the `./run.sh` from the jftool-master folder

once done close both terminal windows and launch your jellyfin docker again.

### Windows 10 support instructions
<img src="https://cdn.iconscout.com/icon/free/png-256/windows-53-226423.png">

Hey there sorry this took so long but basically im a linux guy, here i will link to the source i used to get WSL working on windows 10 https://itsfoss.com/install-bash-on-windows/ however there are a few tweaks you need to get this to work.

prerequisite: you will need a standard install of jellyfin specifically for your system type (32 bit for 32 bit and 64 bit for 64 bit) and you havent changed the install dir of the program)
by default this is "C:/Program Files/Jellyfin" if this is not the case, please modify the script to show your custom dir.. I assume you would know how to do that using notepad on the tool-win.sh (this should work on 32 and 64 bit as long as dir is correct) if you are installing into a different dir just replacing the `c/Program Files/Jellyfin/` string with your custom dir but instead of \ that you see in windows add / for your install (use notepad++ and ctrl+H to do it fast).

**install WSL and running the script**
- Start > type "powershell" > run as admin
- Wait for it to load, then run `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`
- When prompted press Y and hit enter to restart you windows install
- Now you have enabled WSL but you need a platform, pick your flavour in the microsoft store but i personally went with the Ubuntu option.. install it.
- Open Ubuntu (or your flavour picked in previous step) as admin from the start menu not from the launch option (you are editing files installed by an admin so you need to run this as an admin)
- navigate to where you downloaded the script i.e. if you downloaded it on windows and decided to leave them in unzipped form just modify this line with your username. ` cd "/mnt/c/Users/YOURUSERNAMEHERE/Downloads/JFTool-master/"`
- now run the windows version of the tool `./run.sh`
- enjoy your modifications when done you can close the ubuntu window (or whatever flavour you picked earlier)

I am unsure if crontab would work this way with the ubuntu window not open.. I have not attempted maybe someone else can if their server is their main daily driver, but for me it is not (if you do send me a message on reddit at u/HeroinPigeon or on here and this will get updated for the crontab)

### Pre Windows 10 support (cygwin)
<img src="https://img.gadgethacks.com/img/13/26/63580503638581/0/activate-windows-10-with-windows-7-8-product-key.1280x600.jpg">

Okay this one is for people that dont have the ability to use or just dont want to use WSL.

- Download the JFTool-master.zip
- Unzip JFTool-master.zip
- Install cygwin ( https://cygwin.com/install.html ) (all default install options are fine)
- Open cygwin as administrator (start > cygwin > right-click > run as admin)
- Navigate to your dir that your JFtool-master folder (by default if you just unzip the zip in your downloads folder it will only take this command just edit your username) 
`cd "/cygdrive/c/Users/YOURUSERNAMEHERE/Downloads/JFTool-master/JFTool-master"`
- Run jftool `./run.sh`
- Once complete simply close the cygwin tool


### Docker Windows Cygwin

<img src="https://boxboat.com/2017/11/08/docker-windows-server-1709/docker-windows-server-1709.png" width=600 height=200> 

Firstly make the dirs needed to mount the files so this dir is an empty folder
```
C:/Docker/jellyfin/jellyfin-web
```
Now we have done that we will have to make a mount that reflects the containers content on your pc
```
  docker volume create --driver local \
    --opt type=none \
    --opt device=C:/Docker/jellyfin/jellyfin-web \
    --opt o=bind \
    tool_vol
```
now run

```
docker run -it -v tool_vol:/jellyfin/jellyfin-web jellyfin/jellyfin
```

now you just need to open cygwin `./run.sh` from the jftool-master folder

if you have it in your Downloads folder you simply need to run this (changing your username)

`cd /cygdrive/c/Users/YOURUSERNAME/Downloads/JFTool-master/`

then run `./run.sh`

once you are done with the tool close the windows and launch your jellyfin docker again.

### Docker on windows using WSL

same instructions as cygwin

---

# Features

### Image Replacement:

*This changes the images for the Web interface, not the apps sorry.*

<img src="https://i.imgur.com/Wfxtw9S.png">
<img src="https://i.imgur.com/W6ewXAi.png">

Please open the folder **'images'** and replace them with images of the same size that you want to replace the current with. black placeholders are currently located here.

The errors that pop up on this is normal basically it has them because it works on both 10.5.x and 10.4.x

### Custom Links:

<img src="https://i.imgur.com/t8m1oy6.png">

This is quite simple but you can add a custom link for custom items like ombi etc in the side bar.

You can upload an icon 20x20 px to:
`/usr/share/jellyfin/web/iconname.png` (on linux) 
or 
`C:/Program Files/Jellyfin/Server/jellyfin-web/iconname.png` (on windows) 
or 
`C:/Docker/jellyfin/jellyfin-web/` (for docker when using the tool)
and call it by simply putting `/web/iconname.png` instead of full https://full.url/web/iconname.png


### Adding icon to sidebar:

*only changes the web interface not the app sorry*

This gives you a custom icon in the left side bar this puts the icon from logowhite.png (from web root "/var/lib/jellyfin/bin/jellyfin-web/logowhite.png") you can put a image there named logowhite.png if you wish or you can let the custom image make the there after the custom image install has completed.

### Changing the page title:

*only changes the page title in the web browser and web apps not the actual jellyfin app sorry*

<img src="https://i.imgur.com/Wfxtw9S.png">

The title can be changed to anything you want aslong as it does not contain special chars or punctuation so please no ' or ".

The default is 'Jellyfin' (without quotes) however you can also use this tool to change it from whatever you changed it to, to something else again by adding you current title to the string instead of Jellyfin.

### Add logo above login

<img src="http://imgur.com/jf6LxYul.png">

This option adds a logo above the login page (fixed the issue i was being stupid and inserting the line bellow not above where it needs to go) the logo is logowhite.png located at the root of the web dir /usr/lib/jellyfin/bin/jellyfin-web/logowhite.png (note this will auto populate this file if you have already changed the icons in the image folder and pushed them to your server).

### Backup current icons
This will make a folder in the jftool folder called "backedupimages" where your current icons are backed up to (this makes it easier to transition between different updates)

### Add custom holiday / seasonal animations

This is currently broken in 10.6.0 but im working on it

This adds a touch of seasonal boom to your install, pattys day, christmas, halloween, valentines, saintpatricks day, FIREWORKS...... just because who doesnt like fireworks. these do need to be triggered manually until i get some extra time to update a way to crontab this (due to dir permissions on /usr/lib/jellyfin/bin/jellyfin-web)

<img src="https://i.imgur.com/xDWkJkc.gif">
note: this looks laggy because im not great at making gifs, however end result is not laggy and smoother.

### Automatically change animations based on date

broken in 10.6.0 but im working on it

inside the cron folder you will see templates for people using this on a raspberry pi with the default user of pi, if you need to change the dir to the location of your jftool folder do so **before** adding the crontab(s)

okay so hopefully you have modified the templates in the cron folder.

now we will go through the steps of making them run on a calendar timer in crontab

first run `sudo crontab -e` if prompted select option 1 for nano

now add this at the bottom to make them run for a specific period (modify to your own taste or to remove selected ones)

```
# CUSTOM ANIMATIONS FOR JELLYFIN
# Halloween and lead up
1 0 29 10 * /home/pi/jftool/cron/cronhalloween.sh
1 0 1 11 * /home/pi/jftool/cron/cronstock.sh
# Christmas and lead up
1 0 15 12 * /home/pi/jftool/cron/cronsnow.sh
1 0 15 27 * /home/pi/jftool/cron/cronstock.sh
# New Year Day
1 0 31 12 * /home/pi/jftool/cron/cronfirework.sh
1 0 2 1 * /home/pi/jftool/cron/cronstock.sh
# ST Patricks Day
1 0 17 3 * /home/pi/jftool/cron/cronpatty.sh
1 0 18 3 * /home/pi/jftool/cron/cronstock.sh
# Valentines Day
1 0 14 2 * /home/pi/jftool/cron/cronhearts.sh
1 0 15 2 * /home/pi/jftool/cron/cronstock.sh

```
now press ctrl+x and then press y then press enter (this saves the crontab)

okay so now on the dates above at 1 min past midnight it will change the animations.

these work like so min of the day, hour of the day, what day of the month, what month of the year and a wild card because we do not need a day flag there. 

note you may need to make each cron script executable first with `sudo chmod +x cron*.sh` while inside the cron folder

### Remove logo above login
this option removes the custom icon you may have installed, this option does nothing and no harm if there is not a logo on the page above the login.

### Dark to clear theme

This has been moved to custom CSS here is what i use for my look and feel.

Preview of the css when applied

<img src="https://user-images.githubusercontent.com/23018412/88118962-ee41d680-cbb6-11ea-8222-71d0d3c0dd73.PNG">

```
/*Make the red checkmark and likes blue like everything else*/
.playstatebutton-icon-played, .ratingbutton-icon-withrating {color: #00a4dc;}

/*Narrow the login form, size according to display size (bigger on mobile)*/
#loginPage .readOnlyContent, #loginPage form {max-width: 22em;}

/*Hide "please login" text, margin is to prevent login form moving too far up*/
#loginPage h1 {display: none}
#loginPage .padded-left.padded-right.padded-bottom-page {margin-top: 50px}

/*Hide "manual" and "forgot" buttons*/
#loginPage .raised.cancel.block.btnManual.emby-button {display: none}
/*#loginPage .raised.cancel.block.btnForgotPassword.emby-button {display: none}*/

/*Login background*/
#loginPage {background: url(https://pox353.mooo.com/web/bbodback.jpg) !important; background-size: cover !important;}

/*Lighten background*/
.backgroundContainer.withBackdrop {background-color: rgba(0, 0, 0, 0.34) !important;}

/*transparent top bar*/
.skinHeader-withBackground {background-color: #20202000 !important;}

/*Partialy transparent side bar*/
div.mainDrawer {background-color: #1010109c !important;}

/*List Item make solid background*/
.listItem { background: #00000082 !important;}
 
/*Transparent background cards*/
.cardBox:not(.visualCardBox) .cardPadder { background-color: #24242400 !important;}

/*no box shadow*/
.cardBox:not(.visualCardBox) .cardPadder, .cardContent-shadow { box-shadow: 0 0.0725em 0.29em 0 rgba(0, 0, 0, 0) !important;}

/*top ribbon movies transparency*/
.detailRibbon { background: rgba(32, 32, 32, 0.29) !important;}

/*logo position height on tv page*/
.detailLogo{top: 6vh !important;}

/* Remove Media Images */
/*.section0 .cardScalable {display: none;}*/

/* remove My Media title */
.section0 .sectionTitle {display: none;}

/* My Media Styling */
.section0 .itemsContainer {align-items: center; justify-content: center;}
/*.section0 button.itemAction.textActionButton {height: 3.5em; background: #30303000; border-radius: 0.2em;}*/
.section0 .overflowBackdropCard, .section0 .overflowSmallBackdropCard {max-width: 15vw;}
/*.section0 .emby-scroller {margin-right: 0;}*/
/*.section0 .emby-scrollbuttons {display: none;}*/
/*.section0 .itemsContainer {flex-wrap: wrap;}*/
/*@media (max-width: 75em) and (orientation: landscape){.section0 {display: none;} }*/
/*@media (max-width: 75em){.section0 {display: none;}    }*/

/*My custom posters location*/
/*.detailImageContainer {position: relative; margin-top: -61vh; margin-bottom: 10vh; float: left; width: 120vw; z-index: 3;}*/

/*Logo placement on the detail page*/
.detailLogo {top: 9vh !important; left: 450px !important;}

/*blurfix for transparent library icons*/
div[data-type="CollectionFolder"] canvas {display: none;}
```


### Scenes to ExtraFanart

Please note you need to select the correct version for your install 10.4 or 10.5 if you pick the wrong one all you need to do is use the tool and select the correct version

This is simple enough we remove the scenes on the item details page and add a ExtraFanart row that if a user clicks on it they will get the full version for that image, banner, art, disc, box, etc.

<blockquote class="imgur-embed-pub" lang="en" data-id="a/kaDtkmQ"  ><a href="//imgur.com/a/kaDtkmQ">extrafanart jellyfin</a></blockquote>

again sorry i have bad gif skills this is me trying to make a webm file

This is really good for any content that has media that is useful (fitness calendars) or has fancy cover art that the user may want to have a full size of or use the backdrop as a downloadable wallpaper.

### ExtraFanart to Scenes

Please note you need to select the correct version for your install 10.4 or 10.5 if you pick the wrong one all you need to do is use the tool and select the correct version

This option repairs the files we modified for extrafanart back to normal stock version.

### Force Backdrop EXPERIMENTAL

This has been broken in 10.6 but will be back, in time.

this option should force all users to have backdrops enabled by default (if thats your thing) this has been tested and confirmed working on 10.4 however i have not had complete time to test on 10.5 but it appears to? i had time to check once.

this requires your client or you to clear browser cache so the js file will be reloaded allowing backdrops for all the users.

### Remove Forced Backdrop EXPERIMENTAL

this has been broken in 10.6 but will be back, in time.

this removes the changes from the force backdrops option and things should go back to normal after a cache reload on the browser you are using.

### Trailer tab to Requests

This one is fairly simple in the movies we had a broken trailers tab without a trailers plugin (AFAIK) so i decided turn it into a simple iframe for requests so they can stay and request from there

![Trailer tab to requests](https://i.ibb.co/tM9Gjnw/trailertorequests.png)

---

# FAQ

***My favicon has not changed what do i do?***
Please clear you cache in your browser google will help you clear your cache correctly (or test using inprivate browsing).

***Do i have to rescan after using this tool?***
No, not unless you want to.. I mean this tool does not touch your database and has no intention of modifying the database.. personally I would not see a reason to add this in the future either. However you should rescan if you add new video content to your server.

***Why Does this exist?***
This exists to allow the masses to easily modify their installs on their own hardware, my main philosophy is if you are running it you might aswell customize it to look and feel exactly how you want.
