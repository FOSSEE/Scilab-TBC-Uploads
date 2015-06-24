clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-18.2 Page No.400\n');

//Lead angle
L=1/3;
Dp=1.354;
LA=atan(L/(%pi*Dp));

mprintf('\n Lead angle = %f deg.',LA*180/%pi);

//Efficiency
f=0.15;
e=tan(LA)*(1-f*tan(LA))/(tan(LA)+f);

mprintf('\n Efficiency = %f',e*100);

//Power
n=175;
T=454;
P=T*n/63000;
Pt=P*2;

mprintf('\n Power = %f hp per lead screw.',P);

if f>tan(LA) then
    mprintf('\n It is self-locking');
end
