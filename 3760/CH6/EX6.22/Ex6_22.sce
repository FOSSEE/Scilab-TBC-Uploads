clc;
Pm=7500;
V=420;
f=50;
P=4;
s=0.04;
r1=1.2;
x1=1.4;
x2=1.4;
Xm=38.6;

//As per Thevenin's Equivalent circuit
Re=(r1*Xm)/(Xm+x2);
Xe=(x1*Xm)/(x2+Xm);
Ve=(V/sqrt(3))*(Xm/(x2+Xm));
r2=(3)*(1-s)*s*Ve*Ve*(1/Pm);
smT=r2/(sqrt((Re*Re)+((Xe+x2)*(Xe+x2))));
Tem=((3*Ve*Ve)/((((120*f)/P)/60)*2*%pi))*(1/2)*(1/(Re+(sqrt((Re*Re)+((Xe+x2)*(Xe+x2))))));
Test=((3*Ve*Ve)/((((120*f)/P)/60)*2*%pi))*(r2/(((Re+r2)*(Re+r2))+((Xe+x2)*(Xe+x2))));
mprintf('maximum torque is %f Nm \n slip is %f \n starting torque is %f Nm',Tem,smT,Test);

