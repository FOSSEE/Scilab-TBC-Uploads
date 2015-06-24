//Initilization of variables
u=6.55 //ft/s
g=32.2 //ft/s^2
L=6 //ft
W=5 //lb
c=0.7 //fraction of impulse acting in second phase
//Calculations
//Impulse
I=(W/g)*(u/3) //N.s
//Second Phase
v=(u*2-(c*(W*u*(1/3)))) //ft/s
wprime=(1.09*60+c*(W*u*(1/3)*6))/60 //rad/s
//Result
clc
printf('The value of v=%f ft/s and that of w is %f rad/s',v,wprime)
//The value of w is incorrect in the textbook
