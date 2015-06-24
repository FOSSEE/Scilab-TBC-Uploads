
clc
//initialisation of variables
v=120//rpm
r=5//ft
lr=2//ft
l=8.2//ft
p=62.4/32.2
th=25*%pi/180//degrees
cl=0.7
cd1=0.04
N=4
H=25//ft
vf=15//ft/sec
s=2
vr=36//ft/sec//from velocity diagram
//CALCULATIONS
v1=2*%pi*v*r/60
A=l*lr
F=p*A*vr*vr*[(cl*sin(th))-(cd1*cos(th))]/2
hp=F*62.8*N/550
W=62.4*2*%pi*r*s*vf
eff=F*v1*N*100/(W*H)
//RESULTS
printf ('\n horse power developed= %.f ',hp)
printf ('\n efficiency of turbine= %.1f per cent',eff)
