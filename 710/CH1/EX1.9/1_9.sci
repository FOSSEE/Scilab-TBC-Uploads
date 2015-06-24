clc();
clear;
//To calculate the reverberation time
V=9250;                       //volume of the hall in m^3
A=900;                        //Total absorption in m^2 sabine
T=(0.161*V)/A                 //Reverberation time in s
printf("The reverberation time in a hall of 9250m^3 and total absorption 900 m^2 sabine is %f s",T);
