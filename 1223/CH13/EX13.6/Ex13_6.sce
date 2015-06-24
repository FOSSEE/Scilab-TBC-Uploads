clear;
clc;
//Example 13.6
Ic20=2;
bn=200;
bp=50;
Va=50;
r17=9.63;
r22=7.22;
R20=0.260;
gm17=20.8;
ro17=92.6;
Ro13B=92.6;
R8=0.100;
Rc17=ro17*(1+gm17*R8*r17/(R8+r17));
printf('\nRc17=%.2f KOhm\n',Rc17)
Rc22=(r22+Rc17*Ro13B/(Rc17+Ro13B))/(1+bp);
printf('\nRc22=%.2f KOhm\n',Rc22)
Ic13A=0.18;
Rc19=Va/Ic13A;
printf('\nRc19=%.2f KOhm\n',Rc19)
Rc20=(R20+Rc22*Rc19/(Rc22+Rc19))/(1+bp);
printf('\nRc20=%.5f KOhm\n',Rc20)
Rc20=Rc20*1000;//Ohm
R3=22;
Ro=R3+Rc20;
printf('\noutput resistance=%.2f Ohm\n',Ro)
