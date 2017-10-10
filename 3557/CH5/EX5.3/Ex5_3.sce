//Example 5.3//
c1=5;//at % //drop in carbon concentration 5 to 4 at %
c2=4;// at % //drop in carbon concentration 5 to 4 at %
x1=1;//mm //millimetre
x2=2;//mm //millimetre
d=(c1-c2)/(x1-x2)
mprintf("d = %i at percent /mm",d)
a=7.63;//g/cm^3 //gram per cubic centimeter
b=0.6023*10^24;//atoms //Avgardo's number
c=55.85;//g //atomic mass of iron (from appendix 1)
p=a*(b/c)
mprintf("\np = %e atoms/cm^3",p)
a1=0.01;//given
c1=1;//mm //millimetre
d1=10^6;//cm^3/m^3
e1=10^3;//mm/m
d2=-((a1*p)*c1)*(d1)*(e1)
mprintf("\nd2 = %e atoms/m^4",d2)
D0=20*10^-6;//m^2/s //preexponential constant
Q=142000;//J/mol //activation energy for defect motion
R=8.314;//J/mol/K //universal gas constant
T=1273;//K //Kelvin // absolute temperature
Dc=D0*(%e^-(Q/(R*T)))
mprintf("\nDc = %e m^2/s",Dc)
c2=(-8.23*10^29);//atoms/m^4
J=-Dc*c2
mprintf("\nJ =%e atoms/(m^2.s)",J )

