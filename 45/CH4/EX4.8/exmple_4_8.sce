//example 4.8 
clc;
clear;
//r=input('Enter the values of resistance in Kohms :');
//v=input('Enter the forward voltage drop of LED(in volts) :' );
r=1//taking the given values for r and v 
v=2
i=5-v/r; //calculating I
printf('The current through a LED is : %f mA', i); //displaying I
