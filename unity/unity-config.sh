#Disable real user name in panel
gsettings set com.canonical.indicator.session show-real-name-on-panel false
#Remove user switching menu
gsettings set com.canonical.indicator.session user-show-menu false

#Reload Unity. Although, I prefer a restart due to bugs in unity's reload 
unity --replace &
