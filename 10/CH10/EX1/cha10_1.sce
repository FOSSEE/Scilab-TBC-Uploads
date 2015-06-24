Ka=0.09;N=1000;
Ia=30;Ra=0.4;V=120;
RevEa=-90;

Ea=Ka*N
 
Vo=Ea+(Ia*Ra)

a=Vo*%pi
 
b=2*sqrt(2)*V
 
c=a/b
 
angle=acosd(c)

P=Vo*Ia
 
S=V*Ia
 
Pf=P/S

Vo1=RevEa+(Ia*Ra)

a=Vo1*%pi
 
b=2*sqrt(2)*V
 
c=a/b
 
Angle=acosd(c)
 
Pdc=Ea*Ia
 
Pr=Ia^2*Ra
 
Ps=Pdc-Pr
