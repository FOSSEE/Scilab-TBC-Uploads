clear;
clc;
f=50;r=5*(10^-3);x=.5;y=3;z=4.5;t=6;s=5;
r1=0.7788*r; //r1=GMR
Dab=round(sqrt((y^2)+(x^2))*1000)/1000;
Dab1=round(sqrt((y^2)+(s^2))*1000)/1000;
Daa=sqrt((t^2)+(z^2));
Dab2=Dab;
Dab3=Dab1;
dab=round(nthroot((Dab1*Dab3*Dab*Dab2),4)*100)/100;
dca=fix(nthroot((t*t*z*z),4)*100)/100;
ds1=nthroot((r1*r1*7.5*7.5),4);
ds2=nthroot((r1*r1*5.5*5.5),4);
ds3=ds1;
ds=round(nthroot((ds1*ds2*ds3),3)*1000)/1000;
La=fix(0.4606*log10(dca/ds)*100)/100;
X=2*3*f*La*10^-3;
printf("Inductive reactance = %f ohm/km/phase",X);
