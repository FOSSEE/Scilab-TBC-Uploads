clc;funcprot(0);//EXAMPLE 8.1
//page 221
// Initialisation of Variables
t0=1;.......//Thickness of Copper plate in cm
tf=0.50;.....//Cold reducetion of coopper in cm in step1
tf2=0.16;.....// Further Cold reduction of cooper in cm in step2
//CALCULATIONS
%CW1=((t0-tf)/t0)*100;......//Amount of Cold work accomplished in step1
%CW2=((tf-tf2)/tf)*100;.....//Amount of Cold work accomplished in step2
%CW=((t0-tf2)/t0)*100;.......//Actual Total Cold work in percent
disp(%CW1,"Amount of Cold work accomplished in step1:") 
disp(%CW2,"Amount of Cold work accomplished in step2:")
disp(%CW,"Actual Total Cold work in percent:")
