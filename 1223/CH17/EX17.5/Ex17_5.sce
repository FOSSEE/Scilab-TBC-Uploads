clear;
clc;
//Example 17.5
b=50;
V2=-5.2;
Vbe=0.7;
Rc2=0.240;
Vor=-0.75;
Re=1.180;
iE=(Vor-Vbe-V2)/Re;
printf('\nemitter current=%.2f mA\n',iE)
iB=iE/(1+b);
iB=iB*1000;//micro A
printf('\ninput base current=%.2f microA\n',iB)
R3=1.500;
i3=(Vor-V2)/R3;
printf('\ni3=%.2f mA\n',i3)
iB=iB*0.001;//mA
N=(-(Vor+Vbe)*(1+b)/(Rc2)-i3)/iB;
printf('\nN=%.f\n',N)
