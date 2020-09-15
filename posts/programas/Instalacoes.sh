#!/bin/bash

cd $HOME/Downloads



wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://az764295.vo.msecnd.net/stable/e790b931385d72cf5669fcefc51cdf65990efa5d/code_1.49.0-1599744551_amd64.deb
wget https://github.com/shiftkey/desktop/releases/download/release-2.5.4-linux1/GitHubDesktop-linux-2.5.4-linux1.deb
wget https://downloadsapachefriends.global.ssl.fastly.net/7.4.10/xampp-linux-x64-7.4.10-0-installer.run
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
wget -nc https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -

sudo chmod +x xampp-linux-x64-7.4.10-0-installer.run 
sudo chmod +x PacketTracer-7.2.2-ubuntu-setup.run 
sudo chmod 777 PacketTracer_731_amd64.deb   

sudo ./xampp-linux-x64-7.4.10-0-installer.run 

sudo dpkg --add-architecture i386 

sudo gdebi google-chrome-stable_current_amd64.deb  -n
sudo gdebi code_1.49.0-1599744551_amd64.deb  -n
sudo gdebi GitHubDesktop-linux-2.5.4-linux1.deb -n
sudo gdebi PacketTracer_731_amd64.deb  -n


sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/ -y
sudo add-apt-repository ppa:tehnick/q4wine -y
sudo add-apt-repository 'deb https://typora.io/linux ./' -y
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ artful main' -y
sudo apt-get update
sudo apt-get install typora -y
sudo apt-get install youtube-dl -y
sudo apt-get install youtube-dlg -y
sudo apt-get install openjdk-8-jre -y
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
sudo apt install gdebi -y
sudo apt install unrar -y
sudo apt-get install --install-recommends winehq-stable -y
sudo apt-get install --install-recommends winehq-devel -y
sudo apt install wine64 wine32 -y
sudo apt-get install q4wine -y
sudo apt-get install q4wine-unstable -y

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# reboot

flatpak install flathub org.telegram.desktop -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub io.atom.Atom -y
flatpak install flathub com.google.AndroidStudio -y
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y
flatpak install flathub org.apache.netbeans -y
flatpak install flathub com.jetbrains.PyCharm-Community -y
flatpak install flathub com.sublimetext.three -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub org.audacityteam.Audacity -y
flatpak install flathub org.hydrogenmusic.Hydrogen -y
flatpak install flathub tv.kodi.Kodi -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.videolan.VLC -y
flatpak install flathub com.jvieira.tpt.Metronome -y
flatpak install flathub org.gimp.GIMP -y 
flatpak install flathub org.inkscape.Inkscape -y
flatpak install flathub com.sweethome3d.Sweethome3d -y
flatpak install flathub com.github.bajoja.indicator-kdeconnect -y
flatpak install flathub com.valvesoftware.Steam -y
flatpak install flathub com.skype.Client -y
flatpak install flathub net.minetest.Minetest -y
flatpak install flathub ws.openarena.OpenArena -y
flatpak install flathub io.mgba.mGBA -y
flatpak install flathub net.veloren.veloren -y
flatpak install flathub com.grangerhub.Tremulous -y
flatpak install flathub party.supertux.supertuxparty -y
flatpak install flathub net.supertuxkart.SuperTuxKart -y
flatpak install flathub org.supertuxproject.SuperTux -y
flatpak install flathub org.supertux.SuperTux-Milestone1 -y
flatpak install flathub net.sourceforge.torcs -y
flatpak install flathub org.opensurge2d.OpenSurge -y
flatpak install flathub com.alientrap.nexuiz-classic -y
flatpak install flathub io.openrct2.OpenRCT2 -y
flatpak install flathub org.openttd.OpenTTD -y
flatpak install flathub jp.yvt.OpenSpades -y
flatpak install flathub net.pcsx2.PCSX2 -y
flatpak install flathub org.ppsspp.PPSSPP -y
flatpak install flathub org.gnome.Quadrapassel -y
flatpak install flathub net.redeclipse.RedEclipse -y
flatpak install flathub org.sauerbraten.Sauerbraten -y
flatpak install flathub com.snes9x.Snes9x -y
flatpak install flathub org.speed_dreams.SpeedDreams -y
flatpak install flathub org.srb2.SRB2Kart -y
flatpak install flathub org.srb2.SRB2 -y
flatpak install flathub com.endlessnetwork.tankwarriors -y
flatpak install flathub org.manaplus.ManaPlus -y
flatpak install flathub com.endlessnetwork.passage -y
flatpak install flathub com.locomalito.abbayedesmorts -y
flatpak install flathub uk.me.doof.Lander -y
flatpak install flathub io.gitlab.osslugaru.Lugaru -y
flatpak install flathub net.sourceforge.mars-game -y
flatpak install flathub org.sugarlabs.Maze -y
flatpak install flathub com.mojang.Minecraft -y
flatpak install flathub com.endlessnetwork.MidnightmareTeddy -y
flatpak install flathub ca._0ldsk00l.Nestopia -y
flatpak install flathub org.kde.knavalbattle -y
flatpak install flathub dk.tangramgames.mrrescue -y
flatpak install flathub com.endlessnetwork.missilemath -y
flatpak install flathub io.github.sharkwouter.Minigalaxy -y
flatpak install flathub org.kde.kpat -y
flatpak install flathub net.sourceforge.fretsonfire -y
flatpak install flathub org.frozen_bubble.frozen-bubble -y
flatpak install flathub com.endlessnetwork.frogsquash -y
flatpak install flathub org.gnome.TwentyFortyEight -y
flatpak install flathub org.zdoom.GZDoom -y
flatpak install flathub org.gnome.Games -y
flatpak install flathub org.gnome.HexGL -y
flatpak install flathub com.github.bvschaik.julius -y
flatpak install flathub org.kde.kblocks -y
flatpak install flathub org.kde.kdiamond -y
flatpak install flathub org.kde.kgoldrunner -y
flatpak install flathub org.kde.khangman -y
flatpak install flathub org.kde.ksudoku -y
flatpak install flathub io.github.freedoom.Phase1 -y
flatpak install flathub io.github.freedoom.Phase2 -y
flatpak install flathub org.freeciv.Freeciv -y
flatpak install flathub org.freeorion.FreeOrion -y
flatpak install flathub io.github.freedoom.FreeDM -y
flatpak install flathub org.freecol.FreeCol -y
flatpak install flathub net.sourceforge.Chessx -y
flatpak install flathub com.gitlab.coringao.cavestory-nx -y
flatpak install flathub com.github.dariasteam.cowsrevenge -y
flatpak install flathub io.github.fabiangreffrath.Doom -y
flatpak install flathub org.DolphinEmu.dolphin-emu -y
flatpak install flathub net.dengine.Doomsday -y
flatpak install flathub com.endlessnetwork.dragonsapprentice -y
flatpak install flathub org.develz.Crawl -y
flatpak install flathub com.eduke32.EDuke32 -y
flatpak install flathub io.github.endless_sky.endless_sky -y
flatpak install flathub org.pjbroad.EternallandsClient -y
flatpak install flathub net.sourceforge.ExtremeTuxRacer -y
flatpak install flathub org.flarerpg.Flare -y
flatpak install flathub org.bzflag.BZFlag -y
flatpak install flathub com.albiononline.AlbionOnline -y
flatpak install flathub com.play0ad.zeroad -y
flatpak install flathub org.armagetronad.ArmagetronAdvanced -y
flatpak install flathub com.viewizard.AstroMenace -y
flatpak install flathub net.sourceforge.atanks -y

sudo snap install htop

