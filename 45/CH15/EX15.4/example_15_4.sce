//example 15.4
clc;
clear;
//f=input('Enter the input square wave signal frequency in kHz:');
//t=input('Enter the gate enble time in seconds ' );
//first part :
f=7.50;
t=0.1;
format('v',18);
m=t*f*1000; //making neccesary calculations 
printf('For t = %f seconds\n',t);  // displaying results 
printf('The counter will count up to : %f\n',m);
//part2
t=1;
printf('\n\nFor t = %f seconds\n',t);
m=t*f*1000;
printf('The counter will count up to : %f\n',m);
//part3
t=10;
m=t*f*1000;
printf('\n\nFor t = %f seconds\n',t); 
printf('The counter will count up to : %f\n',m);
