// Caption: Finding switching times T on and T off
clear;
close;
clc;
//off time at i=Imin
T_off=-0.25*log(10/12)/2.5;

//on time
T_on=-0.25*log((12-20)/(10-20))/5;//in seconds

disp(T_on,'On time=')
