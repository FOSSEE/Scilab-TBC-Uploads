clear;
clc;
//Example 13.9
//lambda=y
y=0.02;
//W/L=x and u*Cox/2=t
x=12.5;
t=10;
Kp1=x*t;
printf('\nconduction parameters of M1 and M2=%.fmicroA/V^2\n',Kp1)
Kp1=Kp1*0.001;//mA/V^2
Id=0.0199;
ro2=1/(y*Id);
ro2=ro2*0.001;//Mohm
printf('\noutput resistance=%.2f MOhm\n',ro2)
Iq=0.0397;
ro2=ro2*1000;//Kohm
ro4=ro2;
Ad=sqrt(2*Kp1*Iq)*ro2*ro4/(ro2+ro4);
printf('\nthe gain of input stage=%.2f \n',Ad)
Kn7=0.250;
Id7=Iq;
gm7=2*sqrt(Kn7*Id7)
printf('\ntransconductance of M7=%.2f mA/V\n',gm7)
ro7=1/(y*Id7);
ro7=ro7*0.001;
printf('\noutput resistance of M7 and M8 =%.2fMOhm\n',ro7)
ro7=ro7*1000;//Kohm
ro8=ro7;
Av2=gm7*ro7*ro8/(ro7+ro8);
printf('\ngain of the second stage=%.2f\n',Av2)
Av=Ad*Av2;
printf('\noverall voltage gain=%.2f\n',Av)
