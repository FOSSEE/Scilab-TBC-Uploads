


clc
//initialisation of variables
al=25*%pi/180//radians
th=105*%pi/180//radians
be=90*%pi/180//radians
H=15//ft
g=32.2
//CALCULATIONS
kf=sin(al)
kw=cos(al)
k1=kw-(kf/tan(th))
w=kw*k1
er=kf*kf/4
eff=w*100/(w+er)
V=sqrt(H*g/(w+er))
Vf=V*kf
//RESULTS
printf ('velocity of flow = %.2f ft/sec',Vf-0.2)
