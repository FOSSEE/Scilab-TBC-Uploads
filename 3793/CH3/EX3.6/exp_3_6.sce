clear;
clc;
pe=(%pi*(8.85*10^(-12)));
v=33000;
d=1.5//distance
r=.005 //radius in m
h=5;
l=5;
Cab= ((.01206)/log10((d/r)))*(l);
Cn=2*Cab;
I=(2*%pi*50*Cab*v*10^(-6));
ab=sqrt(1+((d^2)/(4*(h^2))))
f=log(d/.050559);
Cbb=((pe/f)*((10^9)*5)/2);

mprintf(" capacitance = %.3f microF\n",Cab);
mprintf(" capacitance to neutral = %.3f microF\n",Cn);
mprintf(" charing current = j%.3f A\n",I);
mprintf(" capacitance with earth cnsideration = %.3f microF\n",Cbb);// capacitance when effect of earth is considered

