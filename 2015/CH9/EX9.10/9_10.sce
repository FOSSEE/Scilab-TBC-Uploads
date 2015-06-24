clc
//initialisation of variables
sp=200 //mean speed m/s
//CALCULATIONS
d=(21/(0.7773*1.18*200))^0.5
l=1.5*d
s=200/(3*d)
//RESULTS
disp('volumetric efficiency is 0.7773')
printf('\ndiameter is %2fm',d)
printf('\nstroke is %2fm',l)
printf('\nspeed of compressor is %2frev/min',s)
