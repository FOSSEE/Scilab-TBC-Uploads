clear;
clc;
//Example 11.15
Kn=0.2;
Idq=0.1;
ro4=1000;//Kohm
ro6=1000;//KOhm
ro2=ro4;
//lambda=y
y=0.01;
gm=2*sqrt(Kn*Idq);
printf('\ntransconductance=%.3f mA/V\n',gm)
ro=1/(y*Idq);
printf('\noutput resistance=%.2f KOhm\n',ro)
Ro=ro4+ro6*(1+gm*ro);
Ro=Ro*0.001;//Mohm
printf('\noutput resistance of the cascode active load=%.2fMohm\n',Ro)
Ro=Ro*1000;//KOhm
Ad=gm*ro2*Ro/(ro4+Ro);
printf('\ndifferential mode voltage gain=%.2f\n',Ad)
