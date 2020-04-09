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

Jellyfin Customizer v0.3

Note: THIS IS FOR 1.4.X and 1.5.x
Tested and working on debian installs (i.e. Raspbian)

Written By: u/HeroinPigeon

Thanks to the Jellyfin Devs and community at r/Jellyfin

This tool is not to take away devs work but simply to
Make the user have more control over the look of their setup
I cannot stress how much the devs do for us all.

============================================================

1) Add Custom Link	     5) Remove icon from sidebar
2) Change Page Title	     6) Read Me
3) Change Icons		     7) Remove Sidebar Link
4) Add icon to sidebar	  8) Add logo above login
9) Backup current icons  10) Change to original jellyfin icons
11) Quit
Please enter your choice: 
```

# How to use

- Download the jtfool.zip (it has the tool.sh and the images folder with placeholder images already in it).
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
The tool will replace the existing files for logos in your install... so if you want to get them back you will need to grab them from either another install or back them up before running these are located at /var/lib/jellyfin/bin/jellyfin-web/ sometimes located in assets or themes.. depending on version.

# Pictures
Replace the stock logos on entire interface

<img src="https://i.imgur.com/W6ewXAi.png">

Custom Links and a top side bar logo

<img src="https://i.imgur.com/t8m1oy6.png">

Change Page Title and favicon

<img src="https://i.imgur.com/Wfxtw9S.png">

Add logo above login

<img src="http://imgur.com/jf6LxYul.png">


My country is in lockdown and I decided to make it a bit easier to modify your own installs of jellyfin by making a tool in bash.

Sadly this means no windows support.. yet (it is something i am working on) but it has been tested and confirmed working on installs on debian based linux distros (like raspbian and mx linux native installs).

Feel free to download and use it feedback is more than welcome here or at the tools github page

# Image Replacement:
*This changes the images for the Web interface, not the apps sorry.*

Please open the folder **'images'** and replace them with images of the same size that you want to replace the current with. black placeholders are currently located here.

The errors that pop up on this is normal basically it has them because it works on both 10.5.x and 10.4.x

# Custom Links:

This is quite simple but you can add a custom link for custom items like ombi etc in the side bar.

You can upload an icon 20x20 px to "/usr/lib/jellyfin/bin/jellyfin-web/iconname.png" and call it by simply putting /web/iconname.png instead of full https://full.url/web/iconname.png

# Adding icon to sidebar:
*only changes the web interface not the app sorry*

please see the image for the custom links for how this looks

This gives you a custom icon in the left side bar this puts the icon from logowhite.png (from web root "/var/lib/jellyfin/bin/jellyfin-web/logowhite.png") you can put a image there named logowhite.png if you wish or you can let the custom image make the there after the custom image install has completed.

# Changing the page title:
*only changes the page title in the web browser and web apps not the actual jellyfin app sorry*

The title can be changed to anything you want aslong as it does not contain special chars or punctuation so please no ' or ".

The default is 'Jellyfin' (without quotes) however you can also use this tool to change it from whatever you changed it to, to something else again by adding you current title to the string instead of Jellyfin.

# Removing Sidebar Link:
To remove any link you added you can put in the domain that is linked to like myspace.com (sorry couldnt think of a non generic website), note this has a drawback and does not let you put any slashes in the sidebar removal tool so please for this string use your url without any slashes.

*Note: you can always remove them manually by finding the link in the /usr/lib/jellyfin/bin/jellyfin-web/scripts/librarymenu.js*

# Add logo above login
This option adds a logo above the login page (fixed the issue i was being stupid and inserting the line bellow not above where it needs to go) the logo is logowhite.png located at the root of the web dir /usr/lib/jellyfin/bin/jellyfin-web/logowhite.png (note this will auto populate this file if you have already changed the icons in the image folder and pushed them to your server).

# Backup current icons
This will make a folder in the jftool folder called "backedupimages" where your current icons are backed up to (this makes it easier to transition between different updates)

# Change to original jellyfin icons
This makes your icons go back to normal stock jellyfin icons incase for some reason you decided you did not like your own icons you previously changed

# Things to be added that are not in this version
- Custom css injection from a few presets
- version checks for automatic population of compatible items on the menu
- non-linux OS support
