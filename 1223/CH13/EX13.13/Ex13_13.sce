clear;
clc;
//Example 13.13
Va=150;
Vt=0.026;
Ic13=0.2;
gm13=Ic13/Vt;
printf('\ntransconductance=%.2f mA/V\n',gm13)
ro13=Va/Ic13;
printf('\noutput resistance=%.2f KOhm\n',ro13)
Av2=gm13*ro13;
printf('\nvoltage gain=%.2f \n',Av2)
