clc();
clear;
//To find the total absorption in the hall
v=8000;             //volume of the hall
T=1.5;             //Reverberation time in seconds
A=(0.161*v)/T      //Total absorption time in m^2 sabine
printf("The total reverberation in the hall if reverberation time is 1.5s is %f m^2 sabine",A);
