Part 1 
1. sudo apt install wamerican
2. grep -Ec '^vac' /usr/share/dict/words does exist 
3. -c is for count and it prints only a count of selected lines per FILE
   -i is ignroe case and it ignores case distinctions
4. Grep commands below:

- grep -c  ^[aeiouAEIOU]  /usr/share/dict/words 
18032 words start with vowles

- grep -ci 'cat'  /usr/share/dict/words
961 words that have cat inside of the word

- grep -cv "[' , é ]" /usr/share/dict/words
73150 with non alphanumeric characters

- grep -ci [m+]  /usr/share/dict/words
21028 have at least one m or more

Part 2
1. mkdir Lab04, mkdir scripts, touch marco.sh, touch polo.sh
2. my script for marco.sh looks likr this: 
pwd > ~/Fall2020-CEG2350/Lab04/scripts/output.txt

3. my script for polo.sh looks like this:
variable="$(<~/Fall2020-CEG2350/Lab04/scripts/output.txt)"
cd $variable

4. If i type $PATH I can see that /home/ubuntu/Fall2020-CEG2350/Lab04/scripts is in the paths
- running marco.sh and . polo.sh does work running in any directory
- my working export command inside of .bash_profile is: export PATH=$PATH:~/Fall2020-CEG2350/Lab04/scripts
