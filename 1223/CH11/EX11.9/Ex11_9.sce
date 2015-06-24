clear;
clc;
//Example 11.9
b=100;
Vbe=0.7;
Va=100;
Vt=0.026;
Iref=0.5;
Iq=Iref;
I1=Iq/2
Icq=I1;
r=b*Vt/Icq;
printf('\nsmall signal parameter=%.2f KOhm\n',r)
ro=Va/Icq;
printf('\nro=%.2f KOhm\n',ro)
Ro=Va/Iq;
printf('\noutput resistance of Q4=%.2f KOhm\n',Ro)
Rid=2*r;
printf('\ndifferential mode input resistance =%.2fKOhm\n',Rid)
Ricm=(1+b)*(Ro*ro/2)/(Ro+ro/2);
Ricm=Ricm*0.001;//Mohm
printf('\ncommon mode input resistance=%.2f MOhm\n',Ricm)
