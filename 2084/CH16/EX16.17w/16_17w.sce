//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.17w
//calculation of the frequency of the note emitted by the taut string

//given data
nu1=440//frequency(in Hz) of the string
n=4//number of beats per second
nuf=440//tunning frequency(in Hz) of the fork

//calculation
fre=nuf+n//required frequncy

printf('the frequency of the note emitted by the taut string is %d Hz',fre)
