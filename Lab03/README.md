# Lab 03 Notes 
 
Part 1
1. alias aws-ssh="ssh -i /home/mobaxterm/Desktop/aws.pem ubuntu@54.197.86.106"
2. vim ~/.bash_profile, then enter the alias in question 1 ^

Part 2
1. aws-ssh
2. cd Fall2020-CEG2350
3. mkdir Lab03
4. vim input.txt and insert contents specified in the Lab into the file and then save
5. sort input.txt and you will get the result: 
2
2.1
2.2
2.3
4
4.5
4.6
4.7
42.7
43.5
43.7
44.6
46.6
47.4
55.6
62.1
66.6
9.1
9.2
9.3

6. sort input.txt > output.txt

Part 3
1. a. echo $1 takes an argument of a file name
   b. sort $1 sorts the contents 
   c. > $2 outputs the stored data
2. My whole script looks like this 
#! /bin/bash

# Takes the argument of a file name

echo $1

# Sorts the contents of the file stored in an argument using sort command
sort $1 > $2
 

Part 4 
1. Here is the If statment that checks if the file ends in .txt
if [[ $1 == *.txt ]]
        then echo "file ends in .txt"
else
        echo "file format is not alowed"
fi

Part 5 
1 cd Lab03, vim README.md then paste verything in the file
