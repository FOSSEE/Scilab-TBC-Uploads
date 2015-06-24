//Initilization of variables
W=50 //lb
g=32.2
//Calculations
//Using equations of motion
a=(10/(W/g)) //ft/s^2
B=((2.5*(W/g)*a)+4*W-1.5*10)/8 //lb
A=50-B //lb
//Result
clc
printf('The solution is A=%f lb B=%f lb and a=%f ft/s^2',A,B,a)
