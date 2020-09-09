Part 1
2. mkdir Lab02
3. cd Lab02, mkdir DirA, mkdir Directory B
4. If you make a directory in Lab02 called Directory B it will look like: B          DirA   Directory. I think
that DirA is a better naming convention because personally I think its easier to understand when it is listed
as what you created it as. Basiclly its just easier to see DirA. 
5. mv Directory B DirB

Part 2
1. cd DirA, vim test.txt
2. press i then insert three lines

Part 3
1 and 2. cp test.txt .hidden.txt
3. Once I changed the file name to .hidden.txt, that fine does not appear anymore. The only file that shows up is test.txt. 

Part 4 
1 The permissions, owner, and group name are:
drwxrwxr-x 2 ubuntu ubuntu 4.0K Sep  8 14:29 .
drwxrwxr-x 4 ubuntu ubuntu 4.0K Sep  8 14:19 ..
-rw-rw-r-- 1 ubuntu ubuntu   28 Sep  8 14:29 .hidden.txt
-rw-rw-r-- 1 ubuntu ubuntu   28 Sep  8 14:27 test.txt
2. sudo cp test.txt su-test.txt
3. The permissions, owner, and group name by default are: 
-rw-r--r-- 1 root   root     28 Sep  8 14:52 su-test.txt
4. You can not write in it because it is listed as a read only text file. If you wanted to be able to write without
 changing the files permissions you would type sudo vim su-test.txt. If you type sudo chown ubuntu su-test.txt it will
change the owner to ubuntu. 
5. If you use the command sudo chmod -R ugo+rw su-test.txt it will enable you to be able to read and write
in the su-test.txt file. 

Part 5
1. By default you will get: ln: failed to create hard link './test.txt': File exists
2. ln test.txt hard.txt
3. They do have the same inode number
4.  ln -s hard.txt sym.txt
5. Sym.txt(547178) does not have the same inode as hard.txt(547174)
6. They are still readable even though test.txt was removed becasue sym.txt and hard.txt are still linked
7. sym.txt is not readable because the link hard.txt was removed.
8. sym.txt is now readable again becasue we added a file with the same name as the file it was linked to before
9. mv hard.txt /home/ubuntu/Lab02/DirB. You can not read sym.txt anymore
10. rm sym.txt
11. ln hard.txt /home/ubuntu/Lab02/DirA/newsym.txt

I FORGOT TO CREATE ALL OF THIS IN Fall2020-CEG2350 SO I MOVED THE DIRECTORY LAB 2 INTO Fall2020-CEG2350

Part6 
1. git add ., git commit -m "Lab02", git push https://github.com/NKittles/Fall2020-CEG2350.git



