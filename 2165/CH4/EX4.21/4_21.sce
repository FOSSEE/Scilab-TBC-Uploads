clc
//initialisation of variables
p=150//lb/in^2
x=198//r.p.m
x1=33000//lb
h=2700//lb
h1=1400//lb
h2=51600//lb
r=165//C.H.U/lb
s=60//lb
t=48//Degree C
t1=11//degree C
t2=36//Degree C
P1=(40*75*t2*x)/(12*x1)//lb
P2=(38*70*t2*x)/(12*x1)//lb
L1=(t1*300*t2*x)/(12*x1)//lb
L2=(12*295*t2*x)/(12*x1)//lb
T=P1*P2*L1*L2//lb
H=5294//C.H.U/min
T1=h/s///lb/min
H1=T1*663//lb/min
H2=(h2/s*(36-11)+(h/s)*(t))//C.H.U
H3=(h/60)*t//C.H.U
//CALCULATIONS
TE=H/H1-H3*100//percent
R=r/(663-t)*100//percent
//RESULTS
printf('The rankine efficiency =% f percent',R)
