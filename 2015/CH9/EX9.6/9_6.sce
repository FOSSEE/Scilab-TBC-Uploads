clc
//initialisation of variables
d=0.2 //diameter in m
lc=0.01 //linear clearance
l=0.3 //lenght
rp=7
n=1.25
pi=(22/7)
//CALCULATIONS
cv=((pi/4)*((d)^2)*lc)
sv=((pi/4)*(d)^2*l)
cr=cv/sv
veff=(1+cr-cr*(rp)^(1/n))
x=veff*sv
//RESULTS
printf('clearance ratio is %2f',cr)
printf('\nvolumetric efficiency is %2f',veff)
printf('\nvolume of air taken in is %2fm*m*/stroke',x)
