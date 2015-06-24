//ques7
//Airflow through a Converging Diverging Nozzle
clc
P0=1000;//pressure in kPa
R=0.287;
T0=800;//Temperature in K
d0=P0/(R*T0);//density in kg/m^3
//(a) At the throat of the nozzle Ma = 1, and from Table A–32
//throat conditions
Px=P0*0.5283;//pressure in kPa
Tx=T0*0.8333;//temperature in K
dx=d0*0.6339;//density in kg/m^3
printf('(a) P* = %.4f kPa \n',Px);
printf('     T* = %.1f K \n',Tx);
printf('     d* = %.3f kg/m^3 \n',dx);
k=1.4;
Vx=sqrt(k*R*Tx*1000);
printf('     V* = %.1f m/s \n',Vx);
//Since the flow is isentropic, the properties at the exit plane can also be calculated by using data from Table A–32. For Ma = 2
Pe=0.1278*P0;//MPa
Te=0.5556*T0;//K
de=0.23*d0;//density in kg/m^3
Ax=20;//cm^2
Ae=1.6875*Ax;//cm^2
Mae=2;
Maex=1.633;
Ve=Maex*Vx;//m/s
printf(' (b) Pe = %.4f kPa \n',Pe);
printf('     Te = %.1f K \n',Te);
printf('     de = %.3f kg/m^3 \n',de);
printf('     Ae = %.2f cm^2 \n',Ae);
printf('     Ve = %.1f m/s \n',Ve);

//(c)
ms=dx*Ax*Vx*10^-4;
printf(' (c) Mass flow rate = %.2f kg/s \n',ms);