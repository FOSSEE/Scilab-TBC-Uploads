//7.20
clc;
r2s=0.32;
r1=0.64;
x2s=0.48;
x1=1.1;
s=r2s/(r1^2+(x1+x2s)^2)^0.5;
printf("\nSlip=%.4f ",s)
V1=400/3^0.5;
Tmax=1.5*V1^2/(2*%pi*25)*(1/(r1+(r1^2+(x1+x2s)^2)^0.5))
printf("\nMaximum Torque=%.2f Nm",Tmax)
n=25*(1-s);
N=n*60;
printf("\nSpeed=%.2f rpm",N)
disp('at 25 Hz')
x1=0.55;
x2s=0.24;
s=r2s/(r1^2+(x1+x2s)^2)^0.5;
printf("\nSlip=%.4f ",s)
V1=0.5*400/3^0.5;
Tmax=1.5*V1^2/(2*%pi*12.5)*(1/(r1+(r1^2+(x1+x2s)^2)^0.5))
printf("\nMaximum Torque=%.2f Nm",Tmax)
n=12.5*(1-s);
N=n*60;
printf("\nSpeed=%.3f rpm",N)