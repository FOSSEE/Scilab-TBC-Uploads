//Initilization of variables
w=800 //lb/ft
a=600 //ft
d=40 //ft
//Calculations
T=0.5*w*a*(sqrt(1+(a^2/(16*d^2)))) //lb
H=(w*a^2)/(8*d) //lb
//Taking the first two terms of the series
l=a(1+(8/3)*(d/a)^2-(32/5)*0.00002) //ft
//Result
clc
printf('The value of T=%flb and that of H=%flb,Also l=%fft',T,H,l)
//Deciaml accuracy causes discrepancy in answers
