#!/bin/bash


#Licence : GPL V3 
#Copyright ekimia.fr


# 1 - Copying BIOS & EC files

sudo cp -R efiflash /boot/efi

# Creating Grub script 

sudo cp 43_efiflash /etc/grub.d

sudo chmod +x /etc/grub.d/43_efiflash


# Changing Grub to saved   and ( TODO) 


#Updating-Grub

sudo update-grub

#Calling Grub-reboot ( TODO) 

#Showing info to the user 

echo " --------------------------------------------------"
echo " Installation terminée, vous pouvez maintenant redemarrer et choisir EFIFLASH dans GRUB"
echo " appuyez sur une touche pour fermer " 
read valeur
exit 0 
