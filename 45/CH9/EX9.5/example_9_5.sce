//example 9.5
clc;
clear;
close;
//c= input('Enter the clock frequency in Mhz :');
c=10; //given clock frequency 
t= 1000/c;
printf('The data must be stable for 30 ns\n');  //displaying results 
tc = t-30;
printf(' The data may be changing in %d ns',tc);