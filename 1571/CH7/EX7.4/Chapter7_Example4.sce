clc
clear

//INPUT
u=1.08;
cp=8.6;//specific heat in kj/kg.K
j=4.2;//joules constant in j/cal
p1=1*1.013*10^6;//pressure at intial in N/sq.m
p2=20*1.013*10^6;//pressure at final in N/sq.m

//CALCULATIONS
dh=-u*cp*j*(p1-p2);//change in enthalpy in joules

//OUTPUT
mprintf('the change in enthalpy is %3.2fjoules',dh)
