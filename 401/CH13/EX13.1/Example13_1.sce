//Example 13.1
//Program to estimate the maximum temperature change that could
//be allowed for the local oscillator laser

clear;
clc ;
close ;

//Given data
IF=1.5*10^6;          //Hz - NOMINAL IF
del_f=19*10^6;        //Hz/C - OUTPUT FREQUENCY CHANGE

//Maximum temperature change that could be allowed
f=0.1*IF;
Max_temp_change=f/del_f;

//Displaying the Result in Command Window
printf("\n\n\t Maximum temperature change that could be allowed for the local oscillator laser is %0.3f C .",Max_temp_change);