clc
disp("Problem 11.13")
printf("\n")

printf("Given")
disp("Power factor is 0.95(lag)")
vmag=240;Zmag=3.5;Zph=25;
I1mag=vmag/Zmag;iph=0-Zph;
//Smag=Veff*Ieff
Smag=(vmag/sqrt(2))*(I1mag/sqrt(2))
Sph=0+abs(iph)
x=Smag*cos((Sph*%pi)/180)
y=Smag*sin((Sph*%pi)/180)
z=complex(x,y)
pf=0.95
theta=acos(0.95)*(180/%pi)
//From fig 11.11
//Solving for Qc
Qc=y-(tan((theta*%pi)/180)*x)
printf("\n Qc=%dvar(Capacitive )\n",Qc)
