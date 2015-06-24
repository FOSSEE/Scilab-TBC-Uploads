clear;
clc;
//Example 6.11
Vtnd=1;
Vtnl=1;
Kn=30;
//let W/L=x
xl=1;
Vdd=5;
Av=10;
//Av=sqrt(xd/xl)
xd=(Av)^2*xl;
printf('\nwidth to length ratio of driver transistor=%0.2f\n',xd)
Knd=xd*Kn*0.001/2;
Knl=xl*Kn*0.001/2;
printf('\nconduction parameter Knd=%.2f mA/V^2\n',Knd)
printf('\nconduction parameter Knl=%.3f mA/V^2\n',Knl)
//Vgsd-Vtnd=(Vdd-Vtnl)-sqrt(Knd/Knl)*(Vgsd-Vtnd)
y=sqrt(Knd/Knl);
Vgsd=(y+5)/(1+y);
printf('\nVgsd=%.2f V\n',Vgsd)
Vdsd=Vgsd-1;
printf('\nVdsd=%.2f V\n',Vdsd)
