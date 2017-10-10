//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//EX10_10.sce.
clc;
clear;
sf=0.04;
If=37.5;
f=50;
p=4;
V=400;
P_in_HP=25;
z=2.8;
P_in_watt=P_in_HP*735.5;
Nf=((120*f)/p)*(1-sf);
nf=Nf/60;
Tf=P_in_watt/(2*%pi*nf);
Isc_phase=V/z;
Isc=sqrt(3)*Isc_phase;

printf("\n (i) Using Direct switching")
Ist=Isc;
printf("\n \t The starting current=%3.2f A",Ist)
Tst=(Isc/If)^2*sf*Tf;
printf("\n \t The starting torque=%3.1f Nm \n",Tst)

printf("\n (ii) Using Star delta connector")
Ist=(1/3)*Isc;
printf("\n \t The starting current=%3.2f A",Ist)
Tst=(1/3)*(Isc/If)^2*sf*Tf;
printf("\n \t The starting torque=%3.1f Nm \n",Tst)

printf("\n (iii) Using auto transformer")
k=0.7;
Ist=k^2*Isc;
printf("\n \t The starting current=%3.2f A",Ist)
Tst=k^2*(Isc/If)^2*sf*Tf;
printf("\n \t The starting torque=%3.1f Nm \n",Tst)
