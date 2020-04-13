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

Jellyfin Customizer v0.5b

Note: THIS IS FOR 1.4.X and 1.5.x

THIS VERSION IS FOR WINDOWS (STANDARD INSTALLS) using cygwin

Written By: u/HeroinPigeon

Thanks to the Jellyfin Devs and community at r/Jellyfin

This tool is not to take away devs work but simply to
Make the user have more control over the look of their setup
I cannot stress how much the devs do for us all.

============================================================

1) Add Custom Link                     10) Add snow animation
2) Change Page Title                   11) Add Heart animation
3) Change Icons                        12) Add Halloween animation
4) Add icon to sidebar                 13) Add Fireworks
5) Remove icon from sidebar            14) Add Pattys day
6) Remove Sidebar Link                 15) Remove Animations
7) Add logo above login                16) Remove logo above login
8) Backup current icons                17) Quit
9) Change to original jellyfin icons
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
- restart you jellyfin install with `sudo service jellyfin start`

Note: you may be able to modify these without stopping jellyfin server but i would reccomend for sanitys sake when
modifying any files you stop the server, make the edits, then start it again.

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
- navigate to where you downloaded the script i.e. if you downloaded it on windows and decided to leave them in unzipped form just modify this line with your username. ` cd "/mnt/c/Users/YOURUSERNAMEHERE/Downloads/JFTool-master/JFTool-master"`
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
`cd /cygdrive/c/Users/YOURUSERNAMEHERE/Downloads/JFTool-master/JFTool-master`
- Run jftool `./tool-cygwin.sh`
- Once complete simply close the cygwin tool

# Things to be added that are not in this version
- Custom css injection from a few presets (i have this working for now on 10.4.x but i feel like it doesnt work on 10.5.x looking into it soon)
- Docker support (this i am looking into however i am very new to docker.. so may take a while).
