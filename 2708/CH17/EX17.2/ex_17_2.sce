//Example 17.2 //Uncertainty in frequency & uncertainty in velocity 
clc;
clear;
//given data :
ha=1.0545D-34;// average  plank's constant in J.sec
h=6.626D-34;// plank's constant in J.sec
t=1D-8;//average time elapse in excitation in sec
E=ha/t;// uncertainty in energy in j
f=E/h;//Uncertainty in Energy in Hz
disp(E,"uncertainty in energy in j")
disp(f,"Uncertainty in Energy in Hz")
