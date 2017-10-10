//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex10_4.sce

clc;
clear;

f=50;
p=4;
V=400;
E2=190;
R1=0.5;
X1=2.5;
R2=0.06;
X2=0.3;

printf("\n (a)")
Ns=(120*f)/p;
printf("\n  Synchronous speed=%d r.p.m \n",Ns)

printf("\n (b)")
s=(R2/X2)*100;
printf("\n  Slip at which maximum torque occurs=%d percentage \n",s)

printf("\n (c)")
E=E2/sqrt(3);
Ir=(s*E)/(sqrt(2)*R2*100);
pf=1/sqrt(2);
Pi=sqrt(3)*E2*Ir*pf;
P0=(1-s/100)*Pi;
Tm=Pi/(2*%pi*Ns/60);
printf("\n  Maximum Torque=%3.2f synchronous watt \n",Tm)

printf("\n (d)")
Tfl=(1/2)*Tm;
//(2/1)=(R2^2+sf^2*X2^2)/(2*X2*R2*sf)
//From this equation we get sf^2-0.8*sf+0.04=0;
a=1;
b=-0.8;//a,b,c are coefficient values taken from the above second order equation
c=0.04;
sf=(-b-sqrt(b^2-(4*a*c)))/(2*a);
sf_percentage=sf*100;
Nf=Ns*(1-sf);
Pf=2*%pi*(Nf/60)*Tfl;
printf("\n  Full load torque=%3.2f synchronous watt",Tfl)
printf("\n  Full load slip=%1.1f percentage",sf_percentage)
printf("\n  Speed at full load=%d r.p.m",Nf)
printf("\n  Power output=%2.2f kW \n",Pf/1000)
//Answer vary dueto round off error

printf("\n (e)")
f_at_fullload=sf*f;
printf("\n  The rotor frequency at full load=%1.1f Hz",f_at_fullload)
