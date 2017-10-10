clear;
clc;
D=(6*6*12)^(1/3);
ca=2*%pi*8.854*10^(-9);
cb=log(D/sqrt(.013*.25));
Cn=ca/cb;
mprintf("Capacitance to neutral is %.14f F/Km",Cn);
