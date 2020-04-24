#!/bin/bash
echo "   __       _ _        __ _                       "
echo "   \ \  ___| | |_   _ / _(_)_ __                  "
echo "    \ \/ _ \ | | | | | |_| | '_ \                 "
echo " /\_/ /  __/ | | |_| |  _| | | | |                "
echo " \___/ \___|_|_|\__, |_| |_|_| |_|                "
echo "                |___/                             "
echo "   ___          _                  _              "
echo "  / __\   _ ___| |_ ___  _ __ ___ (_)_______ ____ "
echo " / / | | | / __| __/ _ \|  _   _ \| |_  / _ \  __|"
echo "/ /__| |_| \__ \ || (_) | | | | | | |/ /  __/ |   "
echo "\____/\__,_|___/\__\___/|_| |_| |_|_/___\___|_|   "
echo ""
echo "Jellyfin Customizer v1.0"
echo ""
echo "Note: THIS IS FOR 1.4.X and 1.5.x"
echo ""
echo "THIS VERSION IS FOR WINDOWS DOCKER INSTALLS using cygwin"
echo ""
echo "Written By: u/HeroinPigeon"
echo ""
echo "Thanks to the Jellyfin Devs and community at r/Jellyfin"
echo ""
echo "Special Thanks to @boris for the help"
echo ""
echo "This tool is not to take away devs work but simply to"
echo "Make the user have more control over the look of their setup"
echo "I cannot stress how much the devs do for us all."
echo ""
echo "============================================================"
echo ""
PS3='Please enter your choice: '
options=("Add Custom Link" "Change Page Title" "Change Icons" "Add icon to sidebar" "Remove icon from sidebar" "Remove Sidebar Link" "Add logo above login" "Backup current icons" "Change to original jellyfin icons" "Add snow animation" "Add Heart animation" "Add Halloween animation" "Add Fireworks" "Add Pattys day" "Remove Animations" "Remove logo above login"  "CSS injection fix" "CSS Invisible background on top bar" "CSS Slightly see-through side bar" "CSS 10.4 remove login top left logo" "Change Dark theme to clear" "Change clear theme back to dark" "10.4 Change scenes to ExtraFanart" "10.4 Change ExtraFanart back to scenes" "10.5 Change scenes to ExtraFanart" "10.5 Change ExtraFanart back to scenes" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Add Custom Link")
	  echo ""
	  echo "All links should be added in reverse order (bottom to top)"
	  echo "if you wish them to be ordered," 
	  echo "you can change this manually if needed"
	  echo ""
	  echo "URL: (e.g. https://mydomain.com)"
	  read customlink
	  echo "custom link icon url:e.g (http://yourjellyfin.address/web/iconfilename.png)"
	  read customlinkicon
	  echo "Link name? (e.g. Request TV Shows and Movies)"
	  read customlinkname
	  customlinkpt1="html += "
	  customlinkpt2="'<a is="
	  customlinkpt3='"emby-linkbutton" class="navMenuOption lnkMediaFolder" href="'
	  customlinkpt4="${customlink}"
	  customlinkpt5='"><i class="md-icon navMenuOptionIcon"><img src="'
	  customlinkpt6="${customlinkicon}"
	  customlinkpt7='"></i><span class="navMenuOptionText">'
	  customlinkpt8="' + globalize.translate("
	  customlinkpt8b='"'
	  customlinkpt9=${customlinkname}
	  customlinkpt10='") + "</span></a>";'
	  customlink2=${customlinkpt1}${customlinkpt2}${customlinkpt3}${customlinkpt4}${customlinkpt5}${customlinkpt6}${customlinkpt7}${customlinkpt8}${customlinkpt8b}${customlinkpt9}${customlinkpt10}
	  customlink4="\ \ \ \ \ \ \ \ ${customlink2}"
	  sed -i "/libraries are added here/i \
	  ${customlink4}" "/mnt/c/Docker/jellyfin/jellyfin-web/scripts/librarymenu.js"
	  ;;
	"Change Page Title")
	  echo "what is the current name of your server"
	  echo "(this appears in the top of your browser window as a page title)"
	  echo "this is case-sensitive (Default 'Jellyfin')"
	  read currenttitle
	  echo "What do you want to call your server?"
	  read newtitle
	  echo "One Moment Please"
	  sed -i -e "s/$currenttitle/$newtitle/g" "/mnt/c/Docker/jellyfin/jellyfin-web/scripts/librarymenu.js"
	  sed -i -e "s/$currenttitle/$newtitle/g" "/mnt/c/Docker/jellyfin/jellyfin-web/manifest.json"
	  sed -i -e "s/$currenttitle/$newtitle/g" "/mnt/c/Docker/jellyfin/jellyfin-web/index.html"
	  ;;
	"Change Icons")
	  echo "favicon.png"
	  cp ./images/favicon.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  cp ./images/favicon.png "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/"
	  cp ./images/favicon.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/icon-transparent.png"
	  echo "favicon180.png"
	  cp ./images/favicon180.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  cp ./images/favicon180.png "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/"
	  cp ./images/favicon180.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/"
	  echo "logodark.png"
	  cp ./images/logodark.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  cp ./images/logodark.png "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/"
	  cp ./images/logodark.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/banner-dark.png"
	  cp ./images/logodark.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/icon-transparent.png"
	  cp ./images/logodark.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/touchicon.png"
	  cp ./images/logodark.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/touchicon.png"
	  cp ./images/logodark.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/touchicon72.png"
	  cp ./images/logodark.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/touchicon114.png"
	  cp ./images/logodark.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/touchicon144.png"
	  cp ./images/logodark.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/touchicon512.png"
	  echo "logowhite.png"
	  cp ./images/logowhite.png "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/"
	  cp ./images/logowhite.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  cp ./images/logowhite.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/banner-light.png"
	  echo "touchicon.png"
	  cp ./images/touchicon.png "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/"
	  cp ./images/touchicon.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  cp ./images/touchicon.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/"
	  echo "touchicon72.png"
	  cp ./images/touchicon72.png "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/"
	  cp ./images/touchicon72.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  cp ./images/touchicon72.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/"
	  echo "touchicon114.png"
	  cp ./images/touchicon114.png "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/"
	  cp ./images/touchicon114.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  cp ./images/touchicon114.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/"
	  echo "touchicon144.png"
	  cp ./images/touchicon144.png "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/"
	  cp ./images/touchicon144.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  cp ./images/touchicon144.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/"
	  echo "touchicons512"
	  cp ./images/touchicon512.png "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/"
	  cp ./images/touchicon512.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  cp ./images/touchicon512.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/"
	  echo "favicon.ico"
	  cp ./images/favicon.ico "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/"
	  cp ./images/favicon.ico "/mnt/c/Docker/jellyfin/jellyfin-web/"
  	  cp ./images/favicon.ico "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/"
	  ;;
	"Add icon to sidebar")
	  sidebarlogo="\ \ \ \ \ \ \ \ html += '<img src="
	  sidebarlogo2='"/web/logowhite.png" width=250px style="padding: 5px;display:block; margin-left: auto; margin-right: auto;"'
          sidebarlogo3=">';"
	  sidebarlogo4=${sidebarlogo}${sidebarlogo2}${sidebarlogo3}
	  echo "Now adding the code to make your logowhite.png a logo at the top of your sidebar"
          sed -i "/ButtonHome/i \
          ${sidebarlogo4}" "/mnt/c/Docker/jellyfin/jellyfin-web/scripts/librarymenu.js"
	  ;;
	"Remove icon from sidebar")
          sed -i "/logowhite.png/d" "/mnt/c/Docker/jellyfin/jellyfin-web/scripts/librarymenu.js"
	  ;;
	"Remove Sidebar Link")
	  echo "Please Input the exact link address to remove without https:// or slashes (e.g. myspace.com)"
	  read removelink
          sed -i "/${removelink}/d" "/mnt/c/Docker/jellyfin/jellyfin-web/scripts/librarymenu.js" 
	  ;;
	"Add logo above login")
	  echo "adding the logo"
	  logowhite='<img src="/web/logowhite.png" width=400px style="padding: 5px;display:block; margin-left: auto; margin-right: auto;">'
          sed -i "/manualLoginForm hide/i \
          <div class="Login-Logo">" "/mnt/c/Docker/jellyfin/jellyfin-web/login.html"
          sed -i "/Login-Logo/a \
          ${logowhite}" "/mnt/c/Docker/jellyfin/jellyfin-web/login.html"
	  sed -i "/logowhite.png/a \
	  </div>" "/mnt/c/Docker/jellyfin/jellyfin-web/login.html"
	  echo "(Optional) to remove the icon in the top left top bar on the login page please login to the admin panel"
	  echo "General tab and insert the following under custom css"
	  echo ""
	  echo "For 10.4.x add:"
	  echo ".listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}"
	  echo "div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; }"
	  echo " "
	  echo "once you have done that you can click save on web admin page"
	  ;;
	  	"Backup current icons")
	  mkdir ./backedupimages
	  cp "/mnt/c/Docker/jellyfin/jellyfin-web/*.png" ./backedupimages/
	  cp "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/*.png" ./backedupimages/
	  cp "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/*.png" ./backedupimages/
	  cp "/mnt/c/Docker/jellyfin/jellyfin-web/favicon.ico" ./backedupimages/favicon.ico
	  echo "Done"
	  ;;
	"Change to original jellyfin icons")
	  cp ./originalimages/*.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  cp ./originalimages/*.png "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/"
	  cp ./originalimages/*.png "/mnt/c/Docker/jellyfin/jellyfin-web/assets/img/"
	  cp ./originalimages/favicon.ico "/mnt/c/Docker/jellyfin/jellyfin-web/favicon.ico"
	  ;; 
	"Add snow animation")
      cp ./animation/videoosd104.css.fix "/mnt/c/Docker/jellyfin/jellyfin-web/css/videoosd.css"
	  cp ./animation/videoosd.css.fix "/mnt/c/Docker/jellyfin/jellyfin-web/assets/css/videoosd.css"
	  cp ./animation/stylefix.css "/mnt/c/Docker/jellyfin/jellyfin-web/components/htmlvideoplayer/style.css"	
	  cp ./animation/snow.html "/mnt/c/Docker/jellyfin/jellyfin-web/index.html"
	  echo "Added snow (note you may have to change your page title again from 'Jellyfin')"
	  ;;
	"Add Heart animation")
      cp ./animation/videoosd104.css.fix "/mnt/c/Docker/jellyfin/jellyfin-web/css/videoosd.css"
	  cp ./animation/videoosd.css.fix "/mnt/c/Docker/jellyfin/jellyfin-web/assets/css/videoosd.css"
	  cp ./animation/stylefix.css "/mnt/c/Docker/jellyfin/jellyfin-web/components/htmlvideoplayer/style.css"
	  cp ./animation/valentines.html "/mnt/c/Docker/jellyfin/jellyfin-web/index.html"
	  echo "Added hearts (note you may have to change your page title again from 'Jellyfin')"
	  ;;
	"Add Halloween animation")
      cp ./animation/videoosd104.css.fix "/mnt/c/Docker/jellyfin/jellyfin-web/css/videoosd.css"
	  cp ./animation/stylefix.css "/mnt/c/Docker/jellyfin/jellyfin-web/components/htmlvideoplayer/style.css"	
	  cp ./animation/videoosd.css.fix "/mnt/c/Docker/jellyfin/jellyfin-web/assets/css/videoosd.css"
	  cp ./animation/halloween.html "/mnt/c/Docker/jellyfin/jellyfin-web/index.html"
	  cp ./animation/ghost_20x20.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  cp ./animation/bat_20x20.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
  	  cp ./animation/pumpkin_20x20.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
  	  echo "Added Halloween animations (note you may have to change your page title again from 'Jellyfin')"
	  ;;
	"Add Fireworks")
	  cp ./animation/stylefix.css "/mnt/c/Docker/jellyfin/jellyfin-web/components/htmlvideoplayer/style.css"	
	  cp ./animation/videoosd.css.fix "/mnt/c/Docker/jellyfin/jellyfin-web/assets/css/videoosd.css"
      cp ./animation/fireworks.html "/mnt/c/Docker/jellyfin/jellyfin-web/index.html"
      cp ./animation/fireworks.css "/mnt/c/Docker/jellyfin/jellyfin-web/fireworks.css"
      cp ./animation/sitefix10.4.css "/mnt/c/Docker/jellyfin/jellyfin-web/css/site.css"
      cp ./animation/sitefix10.5.css "/mnt/c/Docker/jellyfin/jellyfin-web/assets/css/site.css"
      echo "Added fireworks (note you may have to change your page title again from 'Jellyfin')"
      ;;
    "Add Pattys day")
      cp ./animation/videoosd104.css.fix "/mnt/c/Docker/jellyfin/jellyfin-web/css/videoosd.css"
	  cp ./animation/stylefix.css "/mnt/c/Docker/jellyfin/jellyfin-web/components/htmlvideoplayer/style.css"
	  cp ./animation/videoosd.css.fix "/mnt/c/Docker/jellyfin/jellyfin-web/assets/css/videoosd.css"
      cp ./animation/pattysday.html "/mnt/c/Docker/jellyfin/jellyfin-web/index.html"
	  cp ./animation/lep_30x30.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
  	  cp ./animation/clover_20x20.png "/mnt/c/Docker/jellyfin/jellyfin-web/"
      echo "Added Pattys day (note you may have to change your page title again from 'Jellyfin')"
      ;;
	"Remove Animations")
	  cp ./animation/videoosd104.css.original "/mnt/c/Docker/jellyfin/jellyfin-web/css/videoosd.css"
	  cp ./animation/videoosd.css.original "/mnt/c/Docker/jellyfin/jellyfin-web/assets/css/videoosd.css"
	  cp ./animation/stylestock.css "/mnt/c/Docker/jellyfin/jellyfin-web/components/htmlvideoplayer/style.css"
	  cp ./animation/stockify.html "/mnt/c/Docker/jellyfin/jellyfin-web/index.html"
	  echo "Removed animations (note you may have to change your page title again)"
	  ;;
	"Remove logo above login")
	  echo "Removing the logo"
	  sed -i '/<div class=Login-Logo>/,+2d' "/mnt/c/Docker/jellyfin/jellyfin-web/login.html"
      ;;
        "CSS injection fix")
          mv "/mnt/c/ProgramData/Jellyfin/Server/config/branding.xml" "/mnt/c/ProgramData/Jellyfin/Server/config/branding.originalxml"
          cp ./css/brandingfix.xml "/mnt/c/ProgramData/Jellyfin/Server/config/branding.xml"
          ;;
        "CSS Invisible background on top bar")
          sed -i '/<CustomCss>/a div.skinHeader-withBackground {background-color: #10101000;} !important' "/mnt/c/ProgramData/Jellyfin/Server/config/branding.xml"
          echo "to apply this css you now need to restart your jellyfin server"
          ;;
        "CSS Slightly see-through side bar")
          sed -i '/<CustomCss/a div.mainDrawer {background-color: #101010e6;} !important' "/mnt/c/ProgramData/Jellyfin/Server/config/branding.xml"
          echo "to apply this css please restart your jellyfin server"
          ;;
 	"CSS 10.4 remove login top left logo")
	  echo "This will not work or do anything on 10.5 and above this only for 10.4"
	  sed -i '/<CustomCss/a .listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}' "/mnt/c/ProgramData/Jellyfin/Server/config/branding.xml"
	  sed -i '/<CustomCss/a div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; } !important' "/mnt/c/ProgramData/Jellyfin/Server/config/branding.xml"
	  echo "to apply this css please restart your jellyfin server"
          ;;
        "Change Dark theme to clear")
          echo "Changing your dark theme to clear by heroinpigeon :)"
          echo "also putting that side bar on a diet"
          echo "backing up your original dark theme"
          cp "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/dark/theme.css" ./darktheme.css.backup
          cp ./themes/darktoclear/theme.css "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/dark/theme.css"
	  cp "/mnt/c/Docker/jellyfin/jellyfin-web/themes/dark/theme.css" ./darktheme.css.backup
	  cp ./themes/darktoclear/theme10.5.css "/mnt/c/Docker/jellyfin/jellyfin-web/themes/dark/theme.css"
          ;;
	"Change clear theme back to dark")
	  echo "Changing clear theme back to dark"
	  cp ./themes/dark/theme10.5.css "/mnt/c/Docker/jellyfin/jellyfin-web/themes/dark/"
	  cp ./themes/dark/theme.css "/mnt/c/Docker/jellyfin/jellyfin-web/components/themes/dark/"
	  ;;
	 "10.4 Change scenes to ExtraFanart")
	  echo "This changes the Scenes in the item page to show extrafanart when clicked these also open a new window to show full size image"
      cp ./mods/10.4/extrafanart/itemdetailpage.js "/mnt/c/Docker/jellyfin/jellyfin-web/controllers/"
      cp ./mods/10.4/extrafanart/itemdetails.html "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  ;;
	"10.4 Change ExtraFanart back to scenes")
      echo "Changing the itemdetails page back to normal before we touched it"
      cp ./mods/10.4/stock/itemdetailpage.js "/mnt/c/Docker/jellyfin/jellyfin-web/controllers/"
      cp ./mods/10.4/stock/itemdetails.html "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  ;;
	"10.5 Change scenes to ExtraFanart")
	  echo "This changes the Scenes in the item page to show extrafanart when clicked these also open a new window to show full size image"
      cp ./mods/10.5/extrafanart/itemdetailpage.js "/mnt/c/Docker/jellyfin/jellyfin-web/controllers/"
      cp ./mods/10.5/extrafanart/itemdetails.html "/mnt/c/Docker/jellyfin/jellyfin-web/"
	  ;;
	"10.5 Change ExtraFanart back to scenes")
      echo "Changing the itemdetails page back to normal before we touched it"
      cp ./mods/10.5/stock/itemdetails.html "/mnt/c/Docker/jellyfin/jellyfin-web/"
      cp ./mods/10.5/stock/itemdetailpage.js "/mnt/c/Docker/jellyfin/jellyfin-web/controllers/"
	  ;; 
 	"Quit")
	  break
	  ;;
	*) echo "invalid option $REPLY";;
    esac
done
