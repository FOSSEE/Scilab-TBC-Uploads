clear;
clc;
//Example 11.16
Iq=0.2;
Ic1=Iq;
Icb=1;
R4=10;
R3=0.2;
b=100;
Va=100;
Vt=0.026;
Ri=2*(1+b)*b*Vt/Iq;
Ri=Ri*0.001;//MOhm
printf('\ninput resistance=%.2f MOhm\n',Ri)
R11=b*Vt/Iq;
printf('\nresistance R11=%.2f KOhm\n',R11)
Re=R11*R3/(R11+R3);
printf('\nRe=%.2f KOhm\n',Re)
gm11=Iq/Vt;
printf('\ngm11=%.3f mA/V\n',gm11)
ro11=Va/Iq;
printf('\nro11 =%.2fKOhm\n',ro11)
Rc11=ro11*(1+gm11*Re);
Rc11=Rc11*0.001;//MOhm
printf('\nRc11=%.2f MOhm\n',Rc11)
r8=b*Vt/Icb;
printf('\nresistance=%.2fKOhm\n',r8)
//answer of following given in the book is wrong
Rb8=r8+(1+b)*R4;
Rb8=Rb8*0.001;//MOhm
printf('\nRb8 =%.2fMOhm\n',Rb8)
Rl7=Rc11*Rb8/(Rc11+Rb8);
printf('\nRl7=%.2f MOhm\n',Rl7)
Av=Iq*Rl7/(2*Vt);
printf('\nsmall signal voltage gain=%.2f\n',Av)
