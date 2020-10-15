Part 1 
1. To find my Bios version I typed (systeminfo) and it gave me:
BIOS Version:              Insyde F.33, 12/8/2017

2.Type (set) and look under PROCESSOR_IDENTIFIER this is my CPU brand and info:
PROCESSOR_IDENTIFIER=Intel64 Family 6 Model 142 Stepping 10, GenuineIntel

3. To find Installed memory size I typed (systeminfo | findstr /C:”Total Physical Memory) and got:
Total Physical Memory:     8,109 MB

4. I typed systeminfo and I found:
Virtual Memory: Max Size:  16,845 MB
- My system does have a pagefile (Page File Location(s):     C:\pagefile.sys) microsoft says that
"a page file allows the computer to perform smoothly by reducing the workload of the physical 
memory, or RAM"

5. I Typed diskpart then list volume to see File systems installed on disks I got this:
Volume ###  Ltr  Label        Fs     Type        Size     Status     Info
  ----------  ---  -----------  -----  ----------  -------  ---------  --------
  Volume 0     E   TurboTax 20  CDFS   DVD-ROM      487 MB  Healthy
  Volume 1     C   Windows      NTFS   Partition    914 GB  Healthy    Boot
  Volume 2                      NTFS   Partition    980 MB  Healthy
  Volume 3     D   RECOVERY     NTFS   Partition     16 GB  Healthy
  Volume 4                      FAT32  Partition    260 MB  Healthy    System

6. Partition 3 is my primary. To find number of partitions type diskpart, list volume, select disk 0, 
list partition and it gave me:
  Partition ###  Type              Size     Offset
  -------------  ----------------  -------  -------
  Partition 1    System             260 MB  1024 KB
  Partition 2    Reserved            16 MB   261 MB
  Partition 3    Primary            914 GB   277 MB
  Partition 4    Recovery           980 MB   914 GB
  Partition 5    Primary             16 GB   915 GB

7. To get to UEFI BIOS you type (shutdown.exe /r /o) then click troubleshoot, advanced optionsthen go to 
UEFI to access the firmware then you will need to reset your computer after you changed your settings. 

Part 2
1. I typed cat /boot/grub/menu.lst and the boot options grub represents are:
title           Ubuntu 18.04.2 LTS, kernel 4.15.0-55-generic
root            (hd0)
kernel          /boot/vmlinuz-4.15.0-55-generic root=LABEL=cloudimg-rootfs ro console=hvc0
initrd          /boot/initrd.img-4.15.0-55-generic
title           Ubuntu 18.04.2 LTS, kernel 4.15.0-55-generic (recovery mode)
root            (hd0)
kernel          /boot/vmlinuz-4.15.0-55-generic root=LABEL=cloudimg-rootfs ro  single
initrd          /boot/initrd.img-4.15.0-55-generic

2. This is my disk space:
/dev/xvda1      7.7G  3.1G  4.7G  40% I have 3.1G used and 4.7G still avaliable. 

3. - Primary disk is disk 1
   - I believe it is using a MBR partition table
   - The file system used is ext4

4. - I think you type lshw -version and you would get: B.02.18
   - If you type sudo lshw -C CPU it will give you the CPU brand and info.
   - Type sudo lshw -C memory and it will give you your memory size

5. Type vmstat and it will show you:
procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
 r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
 0  0      0 172232 143012 545624    0    0     1     5    3    6  0  0 100  0  0

Part 3

1. ssh-keygen -t rsa -b 4096 -C "nkittles21@gmail.com"
   I did not add a paraphrase i just pushed enter 
   eval $(ssh-agent -s) and it gave me my Agent pid 16524
   ssh-add ~/.ssh/id_rsa it added to (/home/ubuntu/.ssh/id_rsa)
   - Then i went to Github to create my SSH key. I just titled it github key and then I put my public key
     in the contents of the key. Then create and enter password
2. git remote -v
   git remote set-url origin git@github.com:NKittles/Fall2020-CEG2350.git
   git remote -v to check that is is SSH not HTTPS
3. mkdir Lab06, vim README.md enter lab notes
4. git add ., git commit -m "Lab06", git push and no password was needed. 
