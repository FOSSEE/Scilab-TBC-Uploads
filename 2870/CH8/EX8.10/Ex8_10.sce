clc;clear;
//Example 8.10

//given values
Q=1035;
T0=273;
Tin=293;
Tout=278;
T1=300;

//calculations
//Xin - Xout - Xdestroyed = dX/dt
Xdestroyed=Q*(1-T0/Tin)-Q*(1-T0/Tout);
Xdestroyed=round(Xdestroyed);
disp(Xdestroyed,'the rate of exergy destroyed in W');
//the total rate of exergy destroyed
Xdestroyed=Q*(1-T0/T1)-Q*(1-T0/T0);
disp(Xdestroyed,'the otal total of exergy destroyed in W');
