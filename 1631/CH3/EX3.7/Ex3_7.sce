//caption: amplitude
//Example 3.7 
//page no 123
//find amplitude distortion at highest frquency
//given
clc;
clear;

fs=9.5;  //samplig frequncy
fmax=1;   //maximum frequncy
t=0.2; //pulse width
c=3*10^8;
f=fmax;
H1=t*sinc(f*t); //aperture effect at highest frequency
disp(H1*100,"|H(1)|=");
disp("%");
