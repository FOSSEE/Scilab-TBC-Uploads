f=50
n=500
m=5
N=12
flux=0.025

P=120*f/n
S=m*3*P
Nph=S*N*2/2/3
gammaa=%pi/3/m
Kb=sin(m*gammaa/2)/m/sin(gammaa/2)
polepitch=S/N
coilpitch=13
spa=(polepitch-coilpitch)*gammaa
Kp=cos(spa/2)

Ep=4.44*Kb*Kp*f*Nph*flux
disp(Ep)
Eline=sqrt(3)*Ep
disp(Eline)
