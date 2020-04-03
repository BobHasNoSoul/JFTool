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

Jellyfin Customizer v0.1

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
4) Add icon to sidebar	     8) Quit
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
