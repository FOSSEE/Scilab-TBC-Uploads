Ia=40;Ra=0.25;La=10;
ACv=265;Angle=30;
Ka=0.18;

A=cos(%pi*Angle/180)
 
Vt=(2*sqrt(2)*ACv*A)/(%pi)
 
Ea=Vt-(Ia*Ra)
 
N=Ea/Ka

Sec=(Ka*60)/(2*%pi)
 
T=Sec*Ia
 
P=Vt*Ia

P=(Ia^2*Ra)+Ea*Ia
