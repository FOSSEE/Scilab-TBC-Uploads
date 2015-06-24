Vt=220;Ia=25;Ra=0.6;
Rsr=0.4;Rae=0;N=300;
N1=200;Wm=(2*%pi/60);
Hp=746;

Ea=Vt-Ia*(Ra+Rsr+Rae)

P=Ea*Ia
 
a=P/Hp
 
T=(Ea*Ia)/(N*Wm)

Ksr=T/Ia^2

T1=(N1/N)^2*T

P=(T1*N1*Wm)

a=T1/Ksr

a=sqrt(Ia)

Rae=(Vt-Ea-(Ia*Ra)+(Ia*Rsr))/Ia

P=Ea*Ia
 

 
 