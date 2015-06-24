clc
// initialization of variables
clear
d=250 //mm
c=30 //mm
t=25 //mm
// part (a)
a=5 //mm
lambda=a/(2*c)
f1l=1.22 //from the tble
f2l=1.02
//We don't know P yet so say P=1 
P=1
Sfl=P/(t*2*c)*f1l+3*280*P*f2l/(2*t*c^2)
K_IC=59*sqrt(1000)
P=K_IC/(Sfl*sqrt(a*%pi))
printf('part (a)')
printf('\n P = %.1f kN',P/10^3)
// part (b)
a=10 //mm
lambda=a/(2*c)
f1l=1.33 //from the tble
f2l=1.05
// We don't know P yet so say P=1 
P=1
Sfl=P/(t*2*c)*f1l+3*280*P*f2l/(2*t*c^2)
K_IC=59*sqrt(1000)
P=K_IC/(Sfl*sqrt(a*%pi))
printf('\n part (b)')
printf('\n P = %.1f kN',P/10^3)
