clc
//initialisation of variables
p1=140//lb/in^2
p2=6.6//lb/in^2
v1=122//r.p.m
v2=1250//b.h.p
t=1425//i.h.p
p3=77.8//lb/in^2
h=0.356//lb
v=10000//C.H.U/lb
h2=2400//lb
q=33000//in
j=1400//in
//CALCULATIONS
t=(v2*q*60)/(j*h*v2*v)*100//percent
V=(p3*144*v1)/(q*2)//V
V1=(p2*144*v1)/q//V
T=24.16//V
V2=t/T//ft^3
I=V*V2//ft^3
I1=V1*V2//ft^3
H=24904//C/.H.U//mim
T=(I*q*60)/(j*h*v2*v)*100//percent
T1=(I1*q)/(j*H)*100//percent
T2=(h*v2*v)/(60)//C.H.U
H1=(v2*q)/(j)//C.H.U/mim
H2=H-(I1*q*v2)/(j*t)//C.H.U/mim
T3=H1+H2//C.H.U/mim
Tn=T2-T3//C.H.U/mim
//RESULTS
printf('the overall thermal effciency=% f percent',t)
printf('the cylinder volume in ft^3=% f volume',V)
printf('the thermal efficiency of steam engine=% f percent',T1)
printf('total heat in oil.mim=% f C.H.U/mim',Tn)
