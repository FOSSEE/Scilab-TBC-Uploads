clear;
clc;
//Example 6.12
Vtnd=0.8;
Vtnl=-1.5;
Knd=1;
Knl=0.2;
//lambda=y
yd=0.01;
yl=0.01;
Idq=0.2;
gmd=2*sqrt(Knd*Idq);
printf('\ntransconductance of the driver=%.3f mA/V\n',gmd)
roD=1/(yd*Idq);
printf('\noutput resistances=%.2f Kohm\n',roD)
Av=-gmd*roD/2;
printf('\nsmall signal voltage gain=%.2f \n',Av)
