V=480;Ka=0.3;N=1500;
Ia=130;Ra=0.1;No=1000;

Vp=V/sqrt(3)
 
Ea=Ka*N

Vo=Ea+(Ia*Ra)

a=Vo*%pi
 
b=3*sqrt(6)*Vp
 
c=a/b
 
Angle=acosd(c)
 
IA=sqrt(2/3)*Ia
  
S=3*Vp*IA

Ps=Vo*Ia
 
Pf=Ps/S
 
Ea1=Ka*No

Vo1=-300+(Ia*Ra)

a=Vo1*%pi

b=3*sqrt(6)*Vp
 
c=a/b
 
Angle=acosd(c)

Pdc=Ea1*Ia
 
Pr=Ia^2*Ra
 
Ps=Pdc-Pr
