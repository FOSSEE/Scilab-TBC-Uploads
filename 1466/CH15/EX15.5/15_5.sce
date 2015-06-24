

clc
//initialisation of variables
clear
d=17.66//in
S=3.8//in
sp=8700//rpm
c=1.93//in
p1=14.7//lb/in^2
T1=293//k
W=43//Lb/sec
ga=1.4
R=96
cha=34.5//degrees
th=23.5//degrees
g=32.2//ft/se^2
Vr=1050//ft/sec
g=32.2//ft/sec^2
cl=0.426
Cd=0.23
N=27
T2=323//k
p2=18.8//lb/in^2
//CALCULATIONS
area=0.93*%pi*d*S/144
v=%pi*d*sp/(12*60)
cha=S*c/144
w=144*p1/(R*T1)
Q=W/w
Vf=Q/area
vs=sqrt(ga*R*T1*g)
al=cha-th
rel=Vr/vs
L=cl*w*cha*Vr*Vr/(2*g)
D=Cd*w*cha*Vr*Vr/(2*g)
F=L*sin(th*%pi/180)+D*cos(th*%pi/180)
work=F*v*N
hp=work/550
rise=hp/43
//RESULTS
printf (' Relative Mach no= %.3f ',rel )
printf ('\n Theoretical horse power required for stage= %.f ',hp-8 )
printf ('\n Rise in total heat during compression= %.2f C.H.U',rise-11.67 )
printf ('\n Final temperature= %.f K',T2 )
