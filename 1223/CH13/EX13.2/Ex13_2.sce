clear;
clc;
//Example 13.2
Iref=0.72;
Ic17=0.75*Iref;
printf('\ncollector currents in Q17=%.2f mA\n',Ic17)
b=200;
Ib17=Ic17/b;
Ie17=Ic17;
R8=0.100;
Vbe17=0.6;
R9=50;
Ic16=Ib17+(Ie17*R8+Vbe17)/R9;
Ic16=Ic16*1000;
printf('\ncollector current in Q16=%.2f microA\n',Ic16)
