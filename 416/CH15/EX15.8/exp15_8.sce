clc
clear
disp("example 15.8")
cp=0.593
d=1.293
s=15
a=2/3
dp=2*d*(s^2)*a*(1-a)
dlp=760*dp/(101.3*10^3) //760 mmhg=101.3*10^3pascal then pressure in mm of hg
dpa=dlp/760 //pressure in atmosphere
printf("pressure in pascal %.1fpascal \npressure in height of mercury %.2fmm-hg \npressure in atmosphere %.5fatm",dp,dlp,dpa)
