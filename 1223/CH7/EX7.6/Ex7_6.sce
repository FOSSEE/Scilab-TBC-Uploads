clear;
clc;
//Example 7.6
Rs=3.2;
Rd=10;
Rl=20;
Cl=10;
Vtp=-2;
Kp=0.25;
Idq=0.5;
Vsgq=3.41;
Vsdq=3.41;
gm=2*Kp*(Vsgq+Vtp);
printf('\ntransconductance =%.3fmA/V\n',gm)
Tp=Cl*Rd*Rl/(Rd+Rl);
printf('\ntime constant=%.3f ns\n',Tp)
Tp=66.7*10^-3;//micro sec
fH=1/(2*%pi*Tp);
printf('\ncorner frequency=%.2f MHz\n',fH)
Av=(gm*Rd*Rl/(Rd+Rl))/(1+gm*Rs);
printf('\nmaximum small signal voltage gain=%.2f\n',Av)
