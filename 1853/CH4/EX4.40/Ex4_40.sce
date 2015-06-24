
//calculate the line currnt nd voltage
R=200
Vl=440
f=50
V=Vl/1.732//star connection
I=V/R
Il=I
coso=1
P=3*V*I*coso
Vp=440//delta connection
Vl=440
I1=1.732*I
P1=3*Vp*I*coso
disp('active power='+string(P)+'watt'  , 'active power='+string(P1)+'watt' )
