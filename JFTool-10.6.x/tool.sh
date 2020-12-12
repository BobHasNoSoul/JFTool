#!/bin/bash
Vercheck=3.4
echo "        ______________            __"
echo "       / / ____/_  __/___  ____  / /"
echo "  __  / / /_    / / / __ \/ __ \/ / "
echo " / /_/ / __/   / / / /_/ / /_/ / /  "
echo " \____/_/     /_/  \____/\____/_/   "
echo "                     "
echo ""
echo "JFTool v${Vercheck} -- LINUX"
echo ""
echo "This is for jellyfin 10.6.x versions"
echo ""
echo "Disclaimer: This tool is provided as-is and I cannot be held"
echo "accountable for any hair-loss, data-loss, broken"
echo "relationships or nuclear winter."
echo ""
echo "============================================================"
echo ""
PS3='Please enter your choice: '
options=("Logo in sidebar" "One custom link in side bar" "Two custom link in side bar" "Three custom link in side bar" "Four custom link in side bar" "Logo and One custom link in side bar" "Logo and Two custom link in side bar" "Logo and Three custom link in side bar" "Logo and Four custom link in side bar" "Change Page Title" "Change Icons" "Add logo above login" "Remove logo above login" "Backup current icons" "Change scenes to ExtraFanart" "Change ExtraFanart back to scenes" "Change Trailer Tab To Requests" "Change Requests back to Trailer Tab" "Return to stock" "Add snow animation" "Add Heart animation" "Add Halloween animation" "Add Fireworks" "Add Pattys day" "Remove Animations" "add Dynamic login background" "Quit")
select opt in "${options[@]}"
do
    case $opt in
	
	"Logo in sidebar")
	  echo "Adding logo to the side bar"
	  sudo cp ./JFTool-10.6.x/JFTool-10.6.x/modded/side-menu/libraryMenu0linksjusticon.js /usr/share/jellyfin/web/scripts/libraryMenu.js
	  ;;
    "One custom link in side bar")
	  echo ""
	  echo ""
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url: (e.g https://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  sudo cp ./JFTool-10.6.x/modded/side-menu/libraryMenu1link.js /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  ;;
    "Two custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  sudo cp ./JFTool-10.6.x/modded/side-menu/libraryMenu2links.js /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~2NDLINKHERE~$customlink2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  ;;
    "Three custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "2nd Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
	  read customlink3
	  echo "Icon url:"
	  read customlinkicon3
	  echo "Link name:"
	  read customlinkname3
	  sudo cp ./JFTool-10.6.x/modded/side-menu/libraryMenu3links.js /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~2NDLINKHERE~$customlink2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~3RDLINKHERE~$customlink3~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKICONHERE~$customlinkicon3~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKNAMEHERE~$customlinkname3~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
   	 ;;
	 "Four custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "2nd Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  echo "3rd Link:"
	  echo "URL:"
	  read customlink3
	  echo "Icon url:"
	  read customlinkicon3
	  echo "Link name:"
	  read customlinkname3
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
	  read customlink4
	  echo "Icon url:"
	  read customlinkicon4
	  echo "Link name:"
	  read customlinkname4
	  echo ""
	  sudo cp ./JFTool-10.6.x/modded/side-menu/libraryMenu4links.js /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~2NDLINKHERE~$customlink2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~3RDLINKHERE~$customlink3~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKICONHERE~$customlinkicon3~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKNAMEHERE~$customlinkname3~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~4THLINKHERE~$customlink4~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~4THLINKICONHERE~$customlinkicon4~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~4THLINKNAMEHERE~$customlinkname4~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
   	 ;;
	 "Logo and One custom link in side bar")
	  echo ""
	  echo ""
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
      echo ""
	  sudo cp ./JFTool-10.6.x/modded/side-menu/libraryMenu1linksandicon.js /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
   	 ;;
	 "Logo and Two custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  sudo cp ./JFTool-10.6.x/modded/side-menu/libraryMenu2linksandicon.js /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~2NDLINKHERE~$customlink2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
   	 ;;
	 "Logo and Three custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "2nd Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
	  read customlink3
	  echo "Icon url:"
	  read customlinkicon3
	  echo "Link name:"
	  read customlinkname3
	  echo ""
	  sudo cp ./JFTool-10.6.x/modded/side-menu/libraryMenu3linksandicon.js /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~2NDLINKHERE~$customlink2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~3RDLINKHERE~$customlink3~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKICONHERE~$customlinkicon3~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKNAMEHERE~$customlinkname3~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
   	 ;;
	 "Logo and Four custom link in side bar")
	  echo ""
	  echo ""
	  echo "Top Link:"
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink1
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon1
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname1
	  echo ""
	  echo "2nd Link:"
	  echo "URL:"
      read customlink2
      echo "Icon url:"
	  read customlinkicon2
	  echo "Link name:"
	  read customlinkname2
	  echo ""
	  echo "3rd Link:"
	  echo "URL:"
	  read customlink3
	  echo "Icon url:"
	  read customlinkicon3
	  echo "Link name:"
	  read customlinkname3
	  echo ""
	  echo "Bottom Link:"
	  echo "URL:"
	  read customlink4
	  echo "Icon url:"
	  read customlinkicon4
	  echo "Link name:"
	  read customlinkname4
	  echo ""
	  sudo cp ./JFTool-10.6.x/modded/side-menu/libraryMenu4linksandicon.js /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~TOPLINKHERE~$customlink1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKICONHERE~$customlinkicon1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~TOPLINKNAMEHERE~$customlinkname1~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~2NDLINKHERE~$customlink2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKICONHERE~$customlinkicon2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~2NDLINKNAMEHERE~$customlinkname2~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~3RDLINKHERE~$customlink3~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKICONHERE~$customlinkicon3~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~3RDLINKNAMEHERE~$customlinkname3~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~4THLINKHERE~$customlink4~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~4THLINKICONHERE~$customlinkicon4~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
      sudo sed -i "s~4THLINKNAMEHERE~$customlinkname4~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
   	 ;;
	"Change Page Title")
	  echo "what is the current name of your server"
	  echo "(this appears in the top of your browser window as a page title)"
	  echo "this is case-sensitive (Default 'Jellyfin')"
	  read currenttitle
	  echo "What do you want to call your server?"
	  read newtitle
	  echo "One Moment Please"
	  sudo sed -i "s~$currenttitle~$newtitle~g" /usr/share/jellyfin/web/scripts/libraryMenu.js
	  sudo sed -i "s~$currenttitle~$newtitle~g" /usr/share/jellyfin/web/manifest.json
	  sudo sed -i "s~$currenttitle~$newtitle~g" /usr/share/jellyfin/web/index.html
      sudo sed -i "s~$currenttitle~$newtitle~g" /usr/share/jellyfin/web/home.html
	  ;;
	"Change Icons")
	  echo "This has errors, these errors are normal, ignore these apparently there is a difference in version 10.6.0 and 10.6.3"
	  echo "favicon.png"
	  sudo cp ./JFTool-10.6.x/images/favicon.png /usr/share/jellyfin/web/
	  sudo cp ./JFTool-10.6.x/images/favicon.png /usr/share/jellyfin/web/components/themes/
	  sudo cp ./JFTool-10.6.x/images/favicon.png /usr/share/jellyfin/web/themes/
	  sudo cp ./JFTool-10.6.x/images/favicon.png /usr/share/jellyfin/web/assets/img/icon-transparent.png
	  echo "favicon180.png"
	  sudo cp ./JFTool-10.6.x/images/favicon180.png /usr/share/jellyfin/web/
	  sudo cp ./JFTool-10.6.x/images/favicon180.png /usr/share/jellyfin/web/components/themes/
	  sudo cp ./JFTool-10.6.x/images/favicon180.png /usr/share/jellyfin/web/themes/
	  sudo cp ./JFTool-10.6.x/images/favicon180.png /usr/share/jellyfin/web/assets/img/
	  echo "logodark.png"
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/components/themes/
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/themes/
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/assets/img/banner-dark.png
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/assets/img/icon-transparent.png
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/assets/img/touchicon.png
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/assets/img/touchicon.png
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/assets/img/touchicon72.png
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/assets/img/touchicon114.png
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/assets/img/touchicon144.png
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/assets/img/touchicon512.png
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/assets/img/banner-dark.png
	  sudo cp ./JFTool-10.6.x/images/logodark.png /usr/share/jellyfin/web/themes/banner-dark.png
	  echo "logowhite.png"
	  sudo cp ./JFTool-10.6.x/images/logowhite.png /usr/share/jellyfin/web/themes/banner-light.png
	  sudo cp ./JFTool-10.6.x/images/logowhite.png /usr/share/jellyfin/web/components/themes/
	  sudo cp ./JFTool-10.6.x/images/logowhite.png /usr/share/jellyfin/web/themes/
	  sudo cp ./JFTool-10.6.x/images/logowhite.png /usr/share/jellyfin/web/
	  sudo cp ./JFTool-10.6.x/images/logowhite.png /usr/share/jellyfin/web/assets/img/banner-light.png
	  echo "touchicon.png"
	  sudo cp ./JFTool-10.6.x/images/touchicon.png /usr/share/jellyfin/web/themes/icon-transparent.png
	  sudo cp ./JFTool-10.6.x/images/touchicon.png /usr/share/jellyfin/web/components/themes/
	  sudo cp ./JFTool-10.6.x/images/touchicon.png /usr/share/jellyfin/web/themes/
	  sudo cp ./JFTool-10.6.x/images/touchicon.png /usr/share/jellyfin/web/
	  sudo cp ./JFTool-10.6.x/images/touchicon.png /usr/share/jellyfin/web/assets/img/
	  echo "touchicon72.png"
	  sudo cp ./JFTool-10.6.x/images/touchicon72.png /usr/share/jellyfin/web/components/themes/
	  sudo cp ./JFTool-10.6.x/images/touchicon72.png /usr/share/jellyfin/web/themes/
	  sudo cp ./JFTool-10.6.x/images/touchicon72.png /usr/share/jellyfin/web/
	  sudo cp ./JFTool-10.6.x/images/touchicon72.png /usr/share/jellyfin/web/assets/img/
	  echo "touchicon114.png"
	  sudo cp ./JFTool-10.6.x/images/touchicon114.png /usr/share/jellyfin/web/components/themes/
	  sudo cp ./JFTool-10.6.x/images/touchicon114.png /usr/share/jellyfin/web/themes/
	  sudo cp ./JFTool-10.6.x/images/touchicon114.png /usr/share/jellyfin/web/
	  sudo cp ./JFTool-10.6.x/images/touchicon114.png /usr/share/jellyfin/web/assets/img/
	  echo "touchicon144.png"
	  sudo cp ./JFTool-10.6.x/images/touchicon144.png /usr/share/jellyfin/web/components/themes/
	  sudo cp ./JFTool-10.6.x/images/touchicon144.png /usr/share/jellyfin/web/themes/
	  sudo cp ./JFTool-10.6.x/images/touchicon144.png /usr/share/jellyfin/web/
	  sudo cp ./JFTool-10.6.x/images/touchicon144.png /usr/share/jellyfin/web/assets/img/
	  echo "touchicons512"
	  sudo cp ./JFTool-10.6.x/images/touchicon512.png /usr/share/jellyfin/web/components/themes/
	  sudo cp ./JFTool-10.6.x/images/touchicon512.png /usr/share/jellyfin/web/themes/
	  sudo cp ./JFTool-10.6.x/images/touchicon512.png /usr/share/jellyfin/web/
	  sudo cp ./JFTool-10.6.x/images/touchicon512.png /usr/share/jellyfin/web/assets/img/
	  echo "favicon.ico"
	  sudo cp ./JFTool-10.6.x/images/favicon.ico /usr/share/jellyfin/web/components/themes/
	  sudo cp ./JFTool-10.6.x/images/favicon.ico /usr/share/jellyfin/web/themes/
	  sudo cp ./JFTool-10.6.x/images/favicon.ico /usr/share/jellyfin/web/
  	  sudo cp ./JFTool-10.6.x/images/favicon.ico /usr/share/jellyfin/web/assets/img/
      sudo cp ./JFTool-10.6.x/images/favicon.ico /usr/share/jellyfin/web/assets/favicon.ico
      sudo cp ./JFTool-10.6.x/images/favicon.ico /usr/share/jellyfin/web/components/themes/favicon.ico
	  ;;
	"Add logo above login")
	  echo "bleep bloop adding the logo"
      sudo cp ./JFTool-10.6.x/modded/login.html /usr/share/jellyfin/web/login.html
	  ;;
	 "Backup current icons")
	  mkdir ./JFTool-10.6.x/backedupimages
	  sudo cp /usr/share/jellyfin/web/*.png ./JFTool-10.6.x/backedupimages/
	  sudo cp /usr/share/jellyfin/web/components/themes/*.png ./JFTool-10.6.x/backedupimages/
	  sudo cp /usr/share/jellyfin/web/assets/img/*.png ./JFTool-10.6.x/backedupimages/
	  sudo cp /usr/share/jellyfin/web/favicon.ico ./JFTool-10.6.x/backedupimages/favicon.ico
	  echo "Done"
	  ;;
#	"Change to original jellyfin icons")
#	  sudo cp ./originalimages/*.png /usr/share/jellyfin/web/
#	  sudo cp ./originalimages/*.png /usr/share/jellyfin/web/components/themes/
#	  sudo cp ./originalimages/*.png /usr/share/jellyfin/web/assets/img/
#	  sudo cp ./originalimages/favicon.ico /usr/share/jellyfin/web/favicon.ico
#	  ;; 
	"Add snow animation")
	   sudo cp ./JFTool-10.6.x/animation/videoosd.css /usr/share/jellyfin/web/assets/css/videoosd.css
	   sudo cp ./JFTool-10.6.x/animation/style.css /usr/share/jellyfin/web/plugins/htmlVideoPlayer/style.css	
	   sudo cp ./JFTool-10.6.x/animation/snow.html /usr/share/jellyfin/web/index.html
	   echo "Added snow (note you may have to change your page title again from 'Jellyfin')"
	   ;;
	 "Add Heart animation")
	   sudo cp ./JFTool-10.6.x/animation/videoosd.css /usr/share/jellyfin/web/assets/css/videoosd.css
	   sudo cp ./JFTool-10.6.x/animation/style.css /usr/share/jellyfin/plugins/htmlVideoPlayer/style.css	
	   sudo cp ./JFTool-10.6.x/animation/valentines.html /usr/share/jellyfin/web/index.html
	   echo "Added hearts (note you may have to change your page title again from 'Jellyfin')"
	   ;;
	 "Add Halloween animation")
       sudo cp ./JFTool-10.6.x/animation/videoosd.css /usr/share/jellyfin/web/css/videoosd.css
	   sudo cp ./JFTool-10.6.x/animation/style.css /usr/share/jellyfin/plugins/htmlVideoPlayer/style.css	
	   sudo cp ./JFTool-10.6.x/animation/halloween.html /usr/share/jellyfin/web/index.html
	   sudo cp ./JFTool-10.6.x/animation/ghost_20x20.png /usr/share/jellyfin/web/
	   sudo cp ./JFTool-10.6.x/animation/bat_20x20.png /usr/share/jellyfin/web/
  	   sudo cp ./JFTool-10.6.x/animation/pumpkin_20x20.png /usr/share/jellyfin/web/
  	   echo "Added Halloween animations (note you may have to change your page title again from 'Jellyfin')"
	   ;;
	 "Add Fireworks")
	   sudo cp ./JFTool-10.6.x/animation/style.css /usr/share/jellyfin/plugins/htmlVideoPlayer/style.css	
	   sudo cp ./JFTool-10.6.x/animation/videoosd.css /usr/share/jellyfin/web/assets/css/videoosd.css
       sudo cp ./JFTool-10.6.x/animation/fireworks.html /usr/share/jellyfin/web/index.html
       sudo cp ./JFTool-10.6.x/animation/fireworks.css /usr/share/jellyfin/web/fireworks.css
       echo "Added fireworks (note you may have to change your page title again from 'Jellyfin')"
       ;;
     "Add Pattys day")
	   sudo cp ./JFTool-10.6.x/animation/style.css /usr/share/jellyfin/plugins/htmlVideoPlayer/style.css	
	   sudo cp ./JFTool-10.6.x/animation/videoosd.css /usr/share/jellyfin/web/assets/css/videoosd.css
       sudo cp ./JFTool-10.6.x/animation/pattysday.html /usr/share/jellyfin/web/index.html
	   sudo cp ./JFTool-10.6.x/animation/lep_30x30.png /usr/share/jellyfin/web/
  	   sudo cp ./JFTool-10.6.x/animation/clover_20x20.png /usr/share/jellyfin/web/
       echo "Added Pattys day (note you may have to change your page title again from 'Jellyfin')"
       ;;
	 "Remove Animations")
	   sudo cp ./JFTool-10.6.x/stock/videoosd.css /usr/share/jellyfin/web/assets/css/videoosd.css
	   sudo cp ./JFTool-10.6.x/stock/htmlvideoplayer/style.css /usr/share/jellyfin/plugins/htmlVideoPlayer/style.css	
	   sudo cp ./JFTool-10.6.x/stock/index.html /usr/share/jellyfin/web/index.html
	   echo "Removed animations (note you may have to change your page title again)"
	   ;; 
	"Remove logo above login")
	  echo "bleep bloop Removing the logo"
      sudo cp ./JFTool-10.6.x/stock/login.html /usr/share/jellyfin/web/login.html
      ;;
	"Change scenes to ExtraFanart")
	  echo "This changes the Scenes in the item page to show extrafanart when clicked these also open a new window to show full size image"
      sudo cp ./JFTool-10.6.x/modded/extrafanart/index.js /usr/share/jellyfin/web/controllers/itemDetails/
      sudo cp ./JFTool-10.6.x/modded/extrafanart/index.html /usr/share/jellyfin/web/controllers/itemDetails/
	  ;;
	"Change ExtraFanart back to scenes")
      echo "Changing the itemdetails page back to normal before we touched it"
      sudo cp ./JFTool-10.6.x/stock/extrafanart/index.js /usr/share/jellyfin/web/controllers/itemDetails/
      sudo cp ./JFTool-10.6.x/stock/extrafanart/index.html /usr/share/jellyfin/web/controllers/itemDetails/
	  ;;
#	"Force Backdrops")
#	echo ""
#	echo "This forces Backdrops to display at all times, there is no turning them off unless you use the option Remove Forced Backdrops"
    # echo "This will now load the script (One error is normal here)"
	# echo "Now for this to take effect you have to clear the cache on your browser (or your client will have to) or just wait for your cache"
	# echo "to clear itself and reload the .js file we will load in"
    # echo ""
	# sudo cp ./mods/10.4/forcebackdrops.10.4.js /usr/share/jellyfin/web/components/usersettings/usersettingsbuilder.js
    # sudo cp ./mods/10.5/forcedbackdrops.10.5.js /usr/share/jellyfin/web/scripts/settings/userSettingsBuilder.js
	#;;
	# "Remove Forced Backdrops")
    # echo ""
	# echo "This returns forced backdrops to the stock state of 10.4 or 10.5 (the script will figure that out)"
    # echo "This will now load the script (One error is normal here)"
	# echo "Now for this to take effect you have to clear the cache on your browser (or your client will have to) or just wait for your cache"
	# echo "to clear itself and reload the .js file we will load in"
	# echo ""
	# sudo cp ./mods/10.4/usersettingsbuilder.10.4.js /usr/share/jellyfin/web/components/usersettings/usersettingsbuilder.js
    # sudo cp ./mods/10.5/userSettingsBuilder.10.5.js /usr/share/jellyfin/web/scripts/settings/userSettingsBuilder.js
	# ;;
	"Change Trailer Tab To Requests")
	echo ""
	echo "This will change your boring useless broken Trailers Tab to a nice Requests tab to link with ombi (note some people need to change"
	echo "their reverse proxy settings to allow x-frames from other sources if not on the same domain"
	echo ""
	echo "now we will copy the files"
	sudo cp ./JFTool-10.6.x/modded/movies/*.js /usr/share/jellyfin/web/controllers/movies/
	echo "finished copying files"
	echo ""
	echo "Please Input the URL of your ombi install (e.g. domain.com/ombi without https:// or http://) :"
    read ombiurl
	sudo sed -i "s~REPLACEURLHERE~$ombiurl~g" /usr/share/jellyfin/web/controllers/movies/movietrailers.js
	echo ""
	echo "This may give you an error and a broken page on the requests tab, if so please check your log does not say the following:"
	echo "Refused to display 'https://DOMAINNAMEHERE.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'." 
	echo ""
	echo "That error is an issue with the content security policy please check your reverse proxy documentation for how to fix that"
	;;
	"Change Requests back to Trailer Tab")
	echo ""
	echo "This will restore the stock files for movietrailers.js and moviesrecommended.js making the tab go to the trailers plugin"
	echo ""
	sudo cp ./JFTool-10.6.x/stock/moviesrecommended.js /usr/share/jellyfin/web/controllers/movies/
	sudo cp ./JFTool-10.6.x/stock/movietrailers.js /usr/share/jellyfin/web/controllers/movies/
	;;
	"Return to stock")
    echo ""
	echo "This makes your mods go back to stock, incase something messes up or you missed something"
	echo ""
	sudo cp ./JFTool-10.6.x/stock/home.html /usr/share/jellyfin/web/
	sudo cp ./JFTool-10.6.x/stock/index.html /usr/share/jellyfin/web/
	sudo cp ./JFTool-10.6.x/stock/login.html /usr/share/jellyfin/web/
	sudo cp ./JFTool-10.6.x/stock/manifest.json /usr/share/jellyfin/web/
	sudo cp ./JFTool-10.6.x/stock/moviesrecommended.js /usr/share/jellyfin/web/controllers/movies/
	sudo cp ./JFTool-10.6.x/stock/movietrailers.js /usr/share/jellyfin/web/controllers/movies/
	sudo cp ./JFTool-10.6.x/stock/extrafanart/index.html /usr/share/jellyfin/web/controllers/itemDetails/
	sudo cp ./JFTool-10.6.x/stock/extrafanart/index.js /usr/share/jellyfin/web/controllers/itemDetails/
    sudo cp ./JFTool-10.6.x/stock/libraryMenu.js /usr/share/jellyfin/web/scripts/
	;;
	"add Dynamic login background")
	echo ""
	echo "This will make your background on the login page change between 6 pictures in the" 
	echo "/usr/share/jellyfin/web/JFTool-10.6.x/fanart/ dir and it will be a random one on each reload"
  	echo ""
	echo "copying files now"
	echo ""
	sudo cp -r ./JFTool-10.6.x/fanart /usr/share/jellyfin/web/JFTool-10.6.x/fanart
	echo "injecting the cssbuster.js"
    loginbackjs='    <script src="fanart/cssbuster.js"></script>'
    sudo sed -i "/endinject/i \
    ${loginbackjs}" /usr/share/jellyfin/web/index.html
	echo "injection complete"
	echo ""
	echo "done"
    ;;
	"Quit")
	  break
	  ;;
	*) echo "invalid option $REPLY";;
    esac
done
