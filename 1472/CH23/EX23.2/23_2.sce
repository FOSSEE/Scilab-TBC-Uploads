clc
//initialization of varaibles
f=0.03
T6=1500 //R
disp("from air tables,")
hi=131.46 //B/lb
h6=381 //B/lb
vratio=1/15
v1r=120.7
P1=15 //psi
T1=580 //R
x=0.5
Tb=520 //R
H=18500 //B/lb
mh=0.0345
m3=1.065
//calculations
h1=f*h6+(1-f)*hi
v2r=v1r*vratio
T2=1615 //R
u2=289.05 //B/lb
P2=T2*1/vratio *P1/T1
theo=0.069 //lb/lb of air
m=theo*x
h3B=0.242*Tb
m3=1+0.03+0.0345
h3=(638+284)/1.065 +h3B
T3=3520 //R
P3=626 //psi
v3=53.34*T3/(P3*144)
v3p=v3*m3
v1=53.35*T1/(144*P1)
v2=14.7/P1
m1=1.03
h3=992
h4=531
T3=3520 //R
T4=2030 //R
W12=m1*(98.9-289.05)
W23=P2*(v3p-v2)*144/778
W34=m3*(h3-h4-53.4*(T3-T4)/778)
W=W12+W23+W34
eta=W/(mh*H)
//results
printf("Efficiency = %.3f",eta)
