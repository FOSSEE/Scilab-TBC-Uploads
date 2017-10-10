//Chapter 06: Counting

clc;
clear;

letters=26 //no. of letters in english alphabet
no_of_letters=3 //number of letters 
choices=10 //number of choices for each letter
result=1//in order to avoid junk values.  Assigned it to 1.
for i=1:no_of_letters
result=result*letters*choices
end

mprintf("The total number of choices are %d",result)
