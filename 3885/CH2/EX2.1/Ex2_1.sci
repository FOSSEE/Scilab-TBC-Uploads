//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 2.1
clc;
clear;
n=300;// number of turns
li=0.01//linearity =1%
v=30//voltage=30V
kp=v/n
disp(kp,'potentiometer constant in (volts/turn)')
nmid=n/2
vmid=kp*nmid
disp(vmid,'voltage at mid point is;')
disp('range of voltage at mid point with 1% linearoty is 14.7volts to 15.3 volts')//vmid(+-)0.3
//assuming potentiometer is perfectly linear so the resistance at midpoint setting from reference is 50kohm
//load resistance of 500Kohm  is connected in parallel with potentiometer
req=(500*50)/(500+50)
v0=(v*req)/(50+req)//using voltage divison rule
disp(v0,'voltage at midpoint with load resistance 500Kohm (in volts)')

