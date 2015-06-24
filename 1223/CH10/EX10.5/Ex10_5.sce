clear;
clc;
//Example 10.5
V1=5;
V2=-5;
R1=9.3;
Re=9.580;
Vt=0.026;
b=100;
Vbe=0.7;
Va=80;
Io=12;
ro2=Va/Io;
printf('\nsmall signal collector resistance=%.2f MOhm\n',ro2)
Io=12*0.001;//mA
gm2=Io/Vt;
printf('\ntransconductance=%.3f mA/V\n',gm2)
r=b*Vt/Io;
printf('\nResistance=%.2f KOhm\n',r)
Ro=ro2*(1+gm2*Re*r/(Re+r));
printf('\noutput resistance=%.2f MOhm\n',Ro)
dVc2=4;
dIo=dVc2/Ro;
printf('\nchange in load current=%.3f microA\n',dIo)
Io=12;//micro A
x=dIo/Io;
x=x*100;
printf('\npercent change in output current =%.4f\n',x)
