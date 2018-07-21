#! /bin/bash

#top 20 ip count

 sudo cat /home/iampk/Desktop/web_logs.txt | awk  '{print $2}'|sort | uniq -c  | sort -nr | head -20

#no of occurrences of a word in a file

echo "Enter filename:"
read fname
echo "Enter the word to search for:"
read word

tr " " '\n' < $fname | grep $word | wc -l 

#search-and-replace and we should give the file name , word and word to replace with in the terminal

fname=$1
word=$2
rword=$3

sed -i 's/'$word'/'$rword'/g' $fname

#11 most frequent commands

awk '{ print $1 }' ~/.bash_history | sort | uniq -c | sort -nr | head -11 

#sort the files and directories inside it by size and display it

ls -RSl   #this lists the files within the top level directory and arranges them correctly

du -sh * | sort -rn  #this lists the top level directories in correct order by size

#find empty files not accessed for 14 days and delete them and we have to give the location as input in the terminal

find $1 -empty -type f -ctime +14 -exec rm -rf {} \;


