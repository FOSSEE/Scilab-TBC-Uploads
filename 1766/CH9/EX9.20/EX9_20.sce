clc;funcprot(0);//Example 9.20
//Initilisation of Variables
r1=0.3;...//Radius of spherical tank in m
T1=100;...//Temparature of fluid in spherical tank in K
r2=0.5;...//Radius of spherical tank inside in m
T2=300;...//Temparature of fluid in spherical tank inside in K
e1=0.15;...//Emissivity of inner tank
e2=0.25;...//Emissivity of outer tank
rs=0.4;...//Radius of spherical shield in m
es=0.4;...//Emissivity of spherical plate
F12=1;....//shape factor of the spherical tank
R=5.67*10^-8;.....//Stefens boltsman constant 
//calculations
A1=4*%pi*r1^2;...//Area of inside of spherical tank in m
A2=4*%pi*r2^2;...//Area of outside of spherical tank in m
As=4*%pi*rs^2;...//Area of outside of spherical tank in m
R1=(1-e1)/(A1*e1);.....//Resistance of Sperical tank inside in sq m
R12=1/(A1*F12);....//Resistance of both inner and outside of spherical tank in sq m
R12s=1/(As*F12);....//Resistance of both inner and outside of spherical t
R2=(1-e2)/(A2*e2);.....//Resistance of spherical tank outside in sq m
Rtoti=R1+R12+R2;....//Total Resistancein sq m
Rs=(1-es)/(As*es);.....//Resistance of spherical plate in sq m
Q12i=(R*(T1^4-T2^4))/Rtoti;.....//Rate of heat loss without sheild in W
Q12ii=(A1*R*(T1^4-T2^4))/((1/e1)+((r1/r2)*((1/e2)-1))+((r1/rs)*((2/es)-1)));....//Rate of heat loss with sheild in W
disp(Q12i,"Rate of heat loss without sheild in W:")
disp(Q12ii/100,"Rate of heat loss with sheild in W:")
