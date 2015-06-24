clc;clear;
//Example 2.7

//given values
T=200;
n=4000/60;//converting rpm into rps

//calculation
Wsh=2*3.14*n*T/1000;
disp(Wsh,'Power transmitted in kW')
