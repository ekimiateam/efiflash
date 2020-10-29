# efiflash
A tool to install a Bios/EC efi flasher for Linux



Very basic installer : 


- Copies the files in /boot/efi/efiflash directory in the EFI partition
- Creates a new grub entry EFIFLASH that launch it 
- the basic menu propose to launch either BIOS or EC flash


You then have to copy your BIOS or EC files and edit the corresponding nsh files in each directory


