

//example 5.12
//calculate radius of zero drawdown
//coefficient of permeability
//drawdown in well
//specific capacity
//maximum rate at which water can be pumped
clc;
//given
d=0.6;            //diameter of well;
rw=d/2;
H=40;             //depth of water in well before pumping
Q=2000;           //discharge from well
s1=4;             //drawdown in well
B1=10;            //distance between well
s2=2;
B2=20;
//Part (a)
h1=H-s1;
h2=H-s2;
t=(H^2-h2^2)/(H^2-h1^2);
R=(B2/(B1^t))^(1/(1-t));
R=round(R*100)/100;
mprintf(" radius of zero drawdown=%f m",R);
//Part (b)
r=10;
k=Q*log10(R/r)*60*24/(1.36*(H^2-h1^2)*1000);
k=round(k*100)/100;
mprintf("\ncoefficient of permeability=%f m/day.",k);

//part (c)
Ho=(H^2-(Q*log10(R/rw)*24*60/(1000*1.36*k)))^0.5;
D=H-Ho;
D=round(D*100)/100;
mprintf("\ndrawdown in well=%f m.",D);

//part (d)
C=Q/(1000*R);
//for R=1 m;Q=Sc
//hence on putting the values in discharge equation  we get
//Sc*log10(61.2*Sc)=0.3223.
//on solving this by trial and error method we get Sc=0.266 m^2/min.
mprintf("\nSpecific capacity=0.266 cubic metre/minutes/metre.");

//part (e)
//this is obtained when Q=H
//hence from equation of discharge,we get
//Q*log10(69.2*Q)=6.528.
//solving it by trial and error method we get Q=2.85 m^3/min.
mprintf("\nmaximum rate at which water can be pumped=2.85 cubic metre/min");

