clear;
clc;
//Example 13.10
Iref=100;
Kn=80;
Kp=40;
//W/L=x
x=25;
//lambda=y
y=0.02;
Id=Iref/2;
gm1=2*sqrt(Kp*x*Id/2);
printf('\ntransconductance gm1=gm8=%.3f microA/V\n',gm1)
gm6=2*sqrt(Kn*x*Id/2);
printf('\ntransconductance=%.3f microA/V\n',gm6)
ro1=1/(y*Id);
ro8=ro1;
ro6=ro1;
ro10=ro1;
printf('\noutput resistance ro1=ro8=ro6=ro10=%.3f MOhm\n',ro1)
Id4=Iref;
ro4=1/(y*Id4);
printf('\nro4=%.3f MOhm\n',ro4)
Ro8=gm1*ro8*ro10;
printf('\ncomposite output resistances =%.2f MOhm\n',Ro8)
Ro6=gm6*ro6*ro4*ro1/(ro4+ro1);
printf('\ncomposite output resistances=%.2f MOhm\n',Ro6)
Ad=gm1*Ro6*Ro8/(Ro6+Ro8);
printf('\ndifferential voltage gain=%.2f\n',Ad)
