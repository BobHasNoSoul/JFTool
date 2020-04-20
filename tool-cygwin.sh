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
echo "Jellyfin Customizer v0.8"
echo ""
echo "Note: THIS IS FOR 1.4.X and 1.5.x"
echo ""
echo "THIS VERSION IS FOR WINDOWS (STANDARD INSTALLS) using cygwin"
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
	  ${customlink4}" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/scripts/librarymenu.js"
	  ;;
	"Change Page Title")
	  echo "what is the current name of your server"
	  echo "(this appears in the top of your browser window as a page title)"
	  echo "this is case-sensitive (Default 'Jellyfin')"
	  read currenttitle
	  echo "What do you want to call your server?"
	  read newtitle
	  echo "One Moment Please"
	  sed -i -e "s/$currenttitle/$newtitle/g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/scripts/librarymenu.js"
	  sed -i -e "s/$currenttitle/$newtitle/g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/manifest.json"
	  sed -i -e "s/$currenttitle/$newtitle/g" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  ;;
	"Change Icons")
	  echo "favicon.png"
	  cp ./images/favicon.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  cp ./images/favicon.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  cp ./images/favicon.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/icon-transparent.png"
	  echo "favicon180.png"
	  cp ./images/favicon180.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  cp ./images/favicon180.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  cp ./images/favicon180.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  echo "logodark.png"
	  cp ./images/logodark.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  cp ./images/logodark.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  cp ./images/logodark.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/banner-dark.png"
	  cp ./images/logodark.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/icon-transparent.png"
	  cp ./images/logodark.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/touchicon.png"
	  cp ./images/logodark.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/touchicon.png"
	  cp ./images/logodark.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/touchicon72.png"
	  cp ./images/logodark.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/touchicon114.png"
	  cp ./images/logodark.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/touchicon144.png"
	  cp ./images/logodark.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/touchicon512.png"
	  echo "logowhite.png"
	  cp ./images/logowhite.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  cp ./images/logowhite.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  cp ./images/logowhite.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/banner-light.png"
	  echo "touchicon.png"
	  cp ./images/touchicon.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  cp ./images/touchicon.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  cp ./images/touchicon.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  echo "touchicon72.png"
	  cp ./images/touchicon72.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  cp ./images/touchicon72.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  cp ./images/touchicon72.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  echo "touchicon114.png"
	  cp ./images/touchicon114.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  cp ./images/touchicon114.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  cp ./images/touchicon114.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  echo "touchicon144.png"
	  cp ./images/touchicon144.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  cp ./images/touchicon144.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  cp ./images/touchicon144.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  echo "touchicons512"
	  cp ./images/touchicon512.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  cp ./images/touchicon512.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  cp ./images/touchicon512.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  echo "favicon.ico"
	  cp ./images/favicon.ico "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  cp ./images/favicon.ico "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
  	  cp ./images/favicon.ico "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  ;;
	"Add icon to sidebar")
	  sidebarlogo="\ \ \ \ \ \ \ \ html += '<img src="
	  sidebarlogo2='"/web/logowhite.png" width=250px style="padding: 5px;display:block; margin-left: auto; margin-right: auto;"'
          sidebarlogo3=">';"
	  sidebarlogo4=${sidebarlogo}${sidebarlogo2}${sidebarlogo3}
	  echo "Now adding the code to make your logowhite.png a logo at the top of your sidebar"
          sed -i "/ButtonHome/i \
          ${sidebarlogo4}" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/scripts/librarymenu.js"
	  ;;
	"Remove icon from sidebar")
          sed -i "/logowhite.png/d" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/scripts/librarymenu.js"
	  ;;
	"Remove Sidebar Link")
	  echo "Please Input the exact link address to remove without https:// or slashes (e.g. myspace.com)"
	  read removelink
          sed -i "/${removelink}/d" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/scripts/librarymenu.js" 
	  ;;
	"Add logo above login")
	  echo "adding the logo"
	  logowhite='<img src="/web/logowhite.png" width=400px style="padding: 5px;display:block; margin-left: auto; margin-right: auto;">'
          sed -i "/manualLoginForm hide/i \
          <div class="Login-Logo">" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/login.html"
          sed -i "/Login-Logo/a \
          ${logowhite}" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/login.html"
	  sed -i "/logowhite.png/a \
	  </div>" "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/login.html"
	  echo "(Optional) to remove the icon in the top left top bar on the login page please login to the admin panel"
	  echo "General tab and insert the following under custom css"
	  echo ""
	  echo "For 10.4.x add:"
	  echo ".listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}"
	  echo "div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; }"
	  echo " "
#	  echo "adding the css to remove dual icons on login page"
#	  if [ -f "/etc/jellyfin/branding.xml" ]; then 
#      echo -e "\e[32m/etc/jellyfin/branding.xml located\e[39m"
#      sed -i "/CustomCSS/a \ .listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}" /etc/jellyfin/branding.xml
#	   sed -i "/CustomCSS/a \ div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; }" /etc/jellyfin/branding.xml
#      else
#      echo "branding.xml is not located in /etc/jellyfin/branding.xml (do not worry this is not an error)"
#      fi
#     if [ -f "/root/.config/jellyfin/branding.xml" ]; then 
#      echo -e "\e[32m/root/.config/jellyfin/branding.xml located (this means you might be running jellyfin as root.. you shouldn't do this but i wont tell if you don't)\e[39m"
#      sed -i "/CustomCSS/a \ .listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}" /root/.config/jellyfin/branding.xml
#      sed -i "/CustomCSS/a \ div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; }" /root/.config/jellyfin/branding.xml
#                                  
#      else
#      echo "branding.xml is not located in /root/.config/jellyfin/branding.xml (do not worry this is not an error)"
#      fi
#     if [ -f "/home/jellyfin/.config/jellyfin/branding.xml" ]; then 
#      echo -e "\e[32m/home/jellyfin/.config/jellyfin/branding.xml located\e[39m"
#      sed -i "/CustomCSS/a \ .listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}" /home/jellyfin/.config/jellyfin/branding.xml
#	   sed -i "/CustomCSS/a \ div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; }" /home/jellyfin/.config/jellyfin/branding.xml
#      else
#      echo "branding.xml is not located in /home/jellyfin/.config/jellyfin/branding.xml (this is not an error)"
#      fi
#     if [ -f "${HOME}/.config/jellyfin/branding.xml" ]; then 
#      echo -e "\e[32m${HOME}/.config/jellyfin/branding.xml located\e[39m"
#      sed -i "/CustomCSS/a \ .listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}" ${HOME}/.config/jellyfin/branding.xml
#	   sed -i "/CustomCSS/a \ div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; }" ${HOME}/.config/jellyfin/branding.xml
#      else
#      echo "branding.xml is not located in ${HOME}/.config/jellyfin/branding.xml (this is not an error)"
#      fi
#      echo "if you do not see a located message above this line you may need to find the location of your branding.xml and send u/heroinpigeon a message because something has gone very.. very wrong."
	  echo "once you have done that you can click save on web admin page"
	  ;;
	  	"Backup current icons")
	  mkdir ./backedupimages
	  cp "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/*.png" ./backedupimages/
	  cp "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/*.png" ./backedupimages/
	  cp "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/*.png" ./backedupimages/
	  cp "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/favicon.ico" ./backedupimages/favicon.ico
	  echo "Done"
	  ;;
	"Change to original jellyfin icons")
	  cp ./originalimages/*.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  cp ./originalimages/*.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/"
	  cp ./originalimages/*.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/img/"
	  cp ./originalimages/favicon.ico "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/favicon.ico"
	  ;; 
	"Add snow animation")
      cp ./animation/videoosd104.css.fix "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/css/videoosd.css"
	  cp ./animation/videoosd.css.fix "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/videoosd.css"
	  cp ./animation/stylefix.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/htmlvideoplayer/style.css"	
	  cp ./animation/snow.html "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  echo "Added snow (note you may have to change your page title again from 'Jellyfin')"
	  ;;
	"Add Heart animation")
      cp ./animation/videoosd104.css.fix "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/css/videoosd.css"
	  cp ./animation/videoosd.css.fix "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/videoosd.css"
	  cp ./animation/stylefix.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/htmlvideoplayer/style.css"
	  cp ./animation/valentines.html "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  echo "Added hearts (note you may have to change your page title again from 'Jellyfin')"
	  ;;
	"Add Halloween animation")
      cp ./animation/videoosd104.css.fix "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/css/videoosd.css"
	  cp ./animation/stylefix.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/htmlvideoplayer/style.css"	
	  cp ./animation/videoosd.css.fix "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/videoosd.css"
	  cp ./animation/halloween.html "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  cp ./animation/ghost_20x20.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  cp ./animation/bat_20x20.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
  	  cp ./animation/pumpkin_20x20.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
  	  echo "Added Halloween animations (note you may have to change your page title again from 'Jellyfin')"
	  ;;
	"Add Fireworks")
	  cp ./animation/stylefix.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/htmlvideoplayer/style.css"	
	  cp ./animation/videoosd.css.fix "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/videoosd.css"
      cp ./animation/fireworks.html "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
      cp ./animation/fireworks.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/fireworks.css"
      cp ./animation/sitefix10.4.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/css/site.css"
      cp ./animation/sitefix10.5.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/site.css"
      echo "Added fireworks (note you may have to change your page title again from 'Jellyfin')"
      ;;
    "Add Pattys day")
      cp ./animation/videoosd104.css.fix "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/css/videoosd.css"
	  cp ./animation/stylefix.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/htmlvideoplayer/style.css"
	  cp ./animation/videoosd.css.fix "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/videoosd.css"
      cp ./animation/pattysday.html "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  cp ./animation/lep_30x30.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
  	  cp ./animation/clover_20x20.png "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
      echo "Added Pattys day (note you may have to change your page title again from 'Jellyfin')"
      ;;
	"Remove Animations")
	  cp ./animation/videoosd104.css.original "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/css/videoosd.css"
	  cp ./animation/videoosd.css.original "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/assets/css/videoosd.css"
	  cp ./animation/stylestock.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/htmlvideoplayer/style.css"
	  cp ./animation/stockify.html "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/index.html"
	  echo "Removed animations (note you may have to change your page title again)"
	  ;;
	"Remove logo above login")
	  echo "Removing the logo"
	  sed -i '/<div class=Login-Logo>/,+2d' "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/login.html"
      ;;
        "CSS injection fix")
          mv "/cygdrive/c/ProgramData/Jellyfin/Server/config/branding.xml" "/cygdrive/c/ProgramData/Jellyfin/Server/config/branding.originalxml"
          cp ./css/brandingfix.xml "/cygdrive/c/ProgramData/Jellyfin/Server/config/branding.xml"
          ;;
        "CSS Invisible background on top bar")
          sed -i '/<CustomCss>/a div.skinHeader-withBackground {background-color: #10101000;} !important' "/cygdrive/c/ProgramData/Jellyfin/Server/config/branding.xml"
          echo "to apply this css you now need to restart your jellyfin server"
          ;;
        "CSS Slightly see-through side bar")
          sed -i '/<CustomCss/a div.mainDrawer {background-color: #101010e6;} !important' "/cygdrive/c/ProgramData/Jellyfin/Server/config/branding.xml"
          echo "to apply this css please restart your jellyfin server"
          ;;
 	"CSS 10.4 remove login top left logo")
	  echo "This will not work or do anything on 10.5 and above this only for 10.4"
	  sed -i '/<CustomCss/a .listItemImage.listItemImage-large.itemAction.lazy {height: 110px;}' "/cygdrive/c/ProgramData/Jellyfin/Server/config/branding.xml"
	  sed -i '/<CustomCss/a div.skinHeader.skinHeader-withBackground.headroom.noHeaderRight {display:none; } !important' "/cygdrive/c/ProgramData/Jellyfin/Server/config/branding.xml"
	  echo "to apply this css please restart your jellyfin server"
          ;;
        "Change Dark theme to clear")
          echo "Changing your dark theme to clear by heroinpigeon :)"
          echo "also putting that side bar on a diet"
          echo "backing up your original dark theme"
          cp "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/dark/theme.css" ./darktheme.css.backup
          cp ./themes/darktoclear/theme.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/dark/theme.css"
	  cp "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/themes/dark/theme.css" ./darktheme.css.backup
	  cp ./themes/darktoclear/theme10.5.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/themes/dark/theme.css"
          ;;
	"Change clear theme back to dark")
	  echo "Changing clear theme back to dark"
	  cp ./themes/dark/theme10.5.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/themes/dark/"
	  cp ./themes/dark/theme.css "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/components/themes/dark/"
	  ;;
	 "10.4 Change scenes to ExtraFanart")
	  echo "This changes the Scenes in the item page to show extrafanart when clicked these also open a new window to show full size image"
      cp ./mods/10.4/extrafanart/itemdetailpage.js "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/controllers/"
      cp ./mods/10.4/extrafanart/itemdetails.html "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  ;;
	"10.4 Change ExtraFanart back to scenes")
      echo "Changing the itemdetails page back to normal before we touched it"
      cp ./mods/10.4/stock/itemdetailpage.js "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/controllers/"
      cp ./mods/10.4/stock/itemdetails.html "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  ;;
	"10.5 Change scenes to ExtraFanart")
	  echo "This changes the Scenes in the item page to show extrafanart when clicked these also open a new window to show full size image"
      cp ./mods/10.5/extrafanart/itemdetailpage.js "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/controllers/"
      cp ./mods/10.5/extrafanart/itemdetails.html "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
	  ;;
	"10.5 Change ExtraFanart back to scenes")
      echo "Changing the itemdetails page back to normal before we touched it"
      cp ./mods/10.5/stock/itemdetails.html "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/"
      cp ./mods/10.5/stock/itemdetailpage.js "/cygdrive/c/Program Files/Jellyfin/Server/jellyfin-web/controllers/"
	  ;; 
 	"Quit")
	  break
	  ;;
	*) echo "invalid option $REPLY";;
    esac
done
