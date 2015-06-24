//example 11.1//
clc
//clears the screen//
clear
//clears already existing variables//
for (i=0:15)
disp('word number to binary address is as follows:')
disp(i)
//displays the word number//
t=dec2bin(i);
//converts it into memory address//
disp(t)
//displays binary address//
i=i+1
end