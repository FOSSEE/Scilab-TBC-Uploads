//Finding ratios
//Example 2.18(pg. 30)
clc
clear
sAl=2.85*(10^-6),sCu=1.7*(10^-6)//specific resistance in ohm-cm
gAl=2.71,gCu=8.89//specific gravity 
cAl=5000,cCu=10000//cost per tonne
//P=V^2/R, power is same for both so resistance must also be same
//so R=(p*l)/(pi*d^2)=(p*l)/(pi*d'^2)
Kd=sqrt(sAl/sCu)//Kd=d/d'
printf('Thus the ratio of diameters is %3.3f \n',Kd)
Km=(Kd^2)*(gAl/gCu)
printf('Thus the ratio of weights is %3.4f \n',Km)
Kc=Km*(cAl/cCu)
printf('Thus the ratio of costs is %3.4f',Kc)
