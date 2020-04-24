# JFTool

```
   __       _ _        __ _                       
   \ \  ___| | |_   _ / _(_)_ __                  
    \ \/ _ \ | | | | | |_| | '_ \                 
 /\_/ /  __/ | | |_| |  _| | | | |                
 \___/ \___|_|_|\__, |_| |_|_| |_|                
                |___/                             
   ___          _                  _              
  / __\   _ ___| |_ ___  _ __ ___ (_)_______ ____ 
 / / | | | / __| __/ _ \|  _   _ \| |_  / _ \  __|
/ /__| |_| \__ \ || (_) | | | | | | |/ /  __/ |   
\____/\__,_|___/\__\___/|_| |_| |_|_/___\___|_|   

Jellyfin Customizer v1.0

Written By: u/HeroinPigeon

Thanks to the Jellyfin Devs and community at r/Jellyfin

Special Thanks to @boris for the help

This tool is not to take away devs work but simply to
Make the user have more control over the look of their setup
I cannot stress how much the devs do for us all.

============================================================

 1) Add Custom Link
 2) Change Page Title
 3) Change Icons
 4) Add icon to sidebar
 5) Remove icon from sidebar
 6) Remove Sidebar Link
 7) Add logo above login
 8) Backup current icons
 9) Change to original jellyfin icons
10) Add snow animation
11) Add Heart animation
12) Add Halloween animation
13) Add Fireworks
14) Add Pattys day
15) Remove Animations
16) Remove logo above login
17) CSS injection fix
18) CSS Invisible background on top bar
19) CSS Slightly see-through side bar
20) CSS 10.4 remove login top left logo
21) Change Dark theme to clear
22) Change clear theme back to dark
23) 10.4 Change scenes to ExtraFanart
24) 10.4 Change ExtraFanart back to scenes
25) 10.5 Change scenes to ExtraFanart
26) 10.5 Change ExtraFanart back to scenes
27) Quit

Please enter your choice:

```

# How to use
*For windows 10 please see the section lower down for windows 10*

- Download the this as a zip, you know that big green button sat in the top right (its just easier than me pushing zip after zip).
- Extract the file to your machine with the jellyfin install on it.
- Edit the images inside the images folder with your favorite image editor and replace them with your own images with the same dimensions (or go wild and change the dimensions.. but if you do your mileage may vary).
- Stop jellyfin from running `sudo service jellyfin stop`
- run `./tool.sh`
- select your options you want to apply from the numbered menu
- once done exit the program using option 8 on the menu or pressing ctrl+c 
- restart you jellyfin install with `sudo service jellyfin start

Note: you may be able to modify these without stopping jellyfin server but i would reccomend for sanitys sake when
modifying any files you stop the server, make the edits, then start it again.

**Some browsers will require you to clear the cache to display properly after changing the images like favicon and page title to do this you should use the settings privacy content and clear the cache or use inprivate browsing / incognito mode to see what the outside world will see**

# Disclaimer
The tool will replace the existing files for logos in your install... so if you want to get them back you will need to grab them from either another install or back them up before running these are located at /var/lib/jellyfin/bin/jellyfin-web/ or on windows C:/Program Files/Jellyfin/Server/jellyfin-web/ sometimes located in assets or themes.. depending on version.

I decided to make it a bit easier to modify your own installs of jellyfin by making a tool in bash.

Feel free to download and use it feedback is more than welcome here or at the tools github page

# Image Replacement:
*This changes the images for the Web interface, not the apps sorry.*

<img src="https://i.imgur.com/Wfxtw9S.png">
<img src="https://i.imgur.com/W6ewXAi.png">

Please open the folder **'images'** and replace them with images of the same size that you want to replace the current with. black placeholders are currently located here.

The errors that pop up on this is normal basically it has them because it works on both 10.5.x and 10.4.x

# Custom Links:

<img src="https://i.imgur.com/t8m1oy6.png">

This is quite simple but you can add a custom link for custom items like ombi etc in the side bar.

You can upload an icon 20x20 px to "/usr/lib/jellyfin/bin/jellyfin-web/iconname.png" and call it by simply putting /web/iconname.png instead of full https://full.url/web/iconname.png

# Adding icon to sidebar:
*only changes the web interface not the app sorry*

This gives you a custom icon in the left side bar this puts the icon from logowhite.png (from web root "/var/lib/jellyfin/bin/jellyfin-web/logowhite.png") you can put a image there named logowhite.png if you wish or you can let the custom image make the there after the custom image install has completed.

# Changing the page title:
*only changes the page title in the web browser and web apps not the actual jellyfin app sorry*

<img src="https://i.imgur.com/Wfxtw9S.png">

The title can be changed to anything you want aslong as it does not contain special chars or punctuation so please no ' or ".

The default is 'Jellyfin' (without quotes) however you can also use this tool to change it from whatever you changed it to, to something else again by adding you current title to the string instead of Jellyfin.

# Removing Sidebar Link:
To remove any link you added you can put in the domain that is linked to like myspace.com (sorry couldnt think of a non generic website), note this has a drawback and does not let you put any slashes in the sidebar removal tool so please for this string use your url without any slashes.

*Note: you can always remove them manually by finding the link in the /usr/lib/jellyfin/bin/jellyfin-web/scripts/librarymenu.js*

# Add logo above login

<img src="http://imgur.com/jf6LxYul.png">

This option adds a logo above the login page (fixed the issue i was being stupid and inserting the line bellow not above where it needs to go) the logo is logowhite.png located at the root of the web dir /usr/lib/jellyfin/bin/jellyfin-web/logowhite.png (note this will auto populate this file if you have already changed the icons in the image folder and pushed them to your server).

# Backup current icons
This will make a folder in the jftool folder called "backedupimages" where your current icons are backed up to (this makes it easier to transition between different updates)

# Change to original jellyfin icons
This makes your icons go back to normal stock jellyfin icons incase for some reason you decided you did not like your own icons you previously changed

# Add custom holiday / seasonal animations
This adds a touch of seasonal boom to your install, pattys day, christmas, halloween, valentines, saintpatricks day, FIREWORKS...... just because who doesnt like fireworks. these do need to be triggered manually until i get some extra time to update a way to crontab this (due to dir permissions on /usr/lib/jellyfin/bin/jellyfin-web)

<img src="https://i.imgur.com/xDWkJkc.gif">
note: this looks laggy because im not great at making gifs, however end result is not laggy and smoother.

# Automatically change animations based on date
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

# Remove logo above login
this option removes the custom icon you may have installed, this option does nothing and no harm if there is not a logo on the page above the login.

# Windows 10 support instructions
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
- now run the windows version of the tool `./tool-win.sh`
- enjoy your modifications when done you can close the ubuntu window (or whatever flavour you picked earlier)

I am unsure if crontab would work this way with the ubuntu window not open.. I have not attempted maybe someone else can if their server is their main daily driver, but for me it is not (if you do send me a message on reddit at u/HeroinPigeon or on here and this will get updated for the crontab)

# Pre Windows 10 support (cygwin)
<img src="https://img.gadgethacks.com/img/13/26/63580503638581/0/activate-windows-10-with-windows-7-8-product-key.1280x600.jpg">

Okay this one is for people that dont have the ability to use or just dont want to use WSL.

- Download the JFTool-master.zip
- Unzip JFTool-master.zip
- Install cygwin ( https://cygwin.com/install.html ) (all default install options are fine)
- Open cygwin as administrator (start > cygwin > right-click > run as admin)
- Navigate to your dir that your JFtool-master folder (by default if you just unzip the zip in your downloads folder it will only take this command just edit your username) 
`cd "/cygdrive/c/Users/YOURUSERNAMEHERE/Downloads/JFTool-master/JFTool-master"`
- Run jftool `./tool-cygwin.sh`
- Once complete simply close the cygwin tool

# Dark to clear theme
This is my personal theme, modified by me :) so what this does? it makes the background slightly lighter, makes the scroll bar thinner so it isnt so intrusive, it also has a totally clear top navigation bar and a partially clear side navigation bar. turn on backdrops for maximum effect. (this will not change your icons)
Screen shots:
<img src="http://imgur.com/apiE5rAl.png" />
<img src="http://imgur.com/p1oMlfyl.png" />

I did get asked why i do this to overwrite the dark theme? the answer is because it is easier for some people to just replace that instead of trying to change the default theme for all users of their server.. i also do like the dark theme, but it depends on how you feel on the day.

# Clear back to dark theme
This is to remove the clear theme and put the original dark theme back, because some people wont like the changes, some will and the main goal of this tool is to let you the server owner and root user decided how your server looks.

no screen shots needed.. dark theme should already be known by most.

# Scenes to ExtraFanart

Please note you need to select the correct version for your install 10.4 or 10.5 if you pick the wrong one all you need to do is use the tool and select the correct version

This is simple enough we remove the scenes on the item details page and add a ExtraFanart row that if a user clicks on it they will get the full version for that image, banner, art, disc, box, etc.

<blockquote class="imgur-embed-pub" lang="en" data-id="a/kaDtkmQ"  ><a href="//imgur.com/a/kaDtkmQ">extrafanart jellyfin</a></blockquote>

again sorry i have bad gif skills this is me trying to make a webm file

# ExtraFanart to Scenes

Please note you need to select the correct version for your install 10.4 or 10.5 if you pick the wrong one all you need to do is use the tool and select the correct version

This option repairs the files we modified for extrafanart back to normal stock version.

# Docker Linux instructions

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
and run the `./tool-dockerlinux.sh` from the jftool-master folder

once done close both terminal windows and launch your jellyfin docker again.



# Docker Windows Cygwin

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

now you just need to open cygwin `./tool-dockerlinux.sh` from the jftool-master folder

if you have it in your Downloads folder you simply need to run this (changing your username)

`cd /cygdrive/c/Users/YOURUSERNAME/Downloads/JFTool-master/`

then run `./tool-dockercygwin.sh`

once you are done with the tool close the windows and launch your jellyfin docker again.

# Docker on windows using WSL

same instructions as cygwin but use ./tool-dockerwsl.sh instead of ./tool-dockercygwin.sh


# FAQ

***My favicon has not changed what do i do?***
Please clear you cache in your browser google will help you clear your cache correctly (or test using inprivate browsing).

***Is the script outdated? i keep getting errors?***
This script is not outdated, please know this was designed not just for the latest version of jellyfin but the older ones as well. The "Errors" as you put them are not always errors if they are happening when changing images or themes etc and it is a cp line error saying file not found this is normal. How cp works in this script is if it does not have the directory that exists it will skip that one file but continue for the ones where the dir is correct.. allowing the scripts to be one for all versions of jellyfin instead of one for each.. please do not worry about this.

***This broke my login page, all i see is a few logos and no login box***
This only applys to an older version of the script current version 1.0 and above do not have the issue. but on older versions if you added more than 1 logo on login page and tried to remove them you would be left with a broken login page. to get around this you would have to remove the images and </div> tag for each one in the login.html located at your server root. **For the current version of this script this has been fixed by making the logo a simple one line html code added and removed with a single line also instead of being split into 3**

***Do i have to rescan after using this tool?***
No, not unless you want to.. I mean this tool does not touch your database and has no intention of modifying the database.. personally I would not see a reason to add this in the future either. However you should rescan if you add new video content to your server.

***Why Does this exist?***
This exists to allow the masses to easily modify their installs on their own hardware, my main philosophy is if you are running it you might aswell customize it to look and feel exactly how you want.

If you have any other feedback please contact me at u/HeroinPigeon or add an issue here if there is an issue/bug not covered here.
