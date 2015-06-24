//Initilization of variables
a=5 //ft/s^2
C=50 //lb-ft
W=161 //lb
g=32.2 //ft/s^2
//Calculations
T=0.5*(W/g)*1^2*a+C //lb
Ox=-T*(2/sqrt(a)) //lb
Oy=T*(1/sqrt(a))+W //lb
Wa=T/(1-(a/g)) //lb
//Result
clc
printf('The values are T=%f lb,Wa=%f lb,Ox=%f lb and Oy=%f lb',T,Wa,Ox,Oy)
