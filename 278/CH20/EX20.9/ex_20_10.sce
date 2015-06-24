//design wire rope
clc
//soltuion
//given
W=55000//N
depth=300//m
v=500//m/min
t=10//s
//ref T20.6,we choose rope type 6*19
//,tab; 20.11,Fs =7,for depth 300 to 600m,design load is calculated by taking 2 to 2.5 times factor of safety fiven is table
//ref table 20.11
Designload=15*55*1000//N
//ref table 20.6,tesnile strength of 6*19 is=595*d^2
//595d^2=designload
//d=sqrt(Desingload/595)//mm
printf("the dia of rope is,%f mm\n",sqrt(Designload/595))
printf("the dia of rope is,say 38mm\n")
d=38//mm
dw=0.063*d//ref table 20.10,dw=dia of wire
A=0.38*d^2
//ref table 20.6
w=0.0363*d^2*depth//N
//ref table 20.12
D=100*d
fb=84000*dw/D
printf("bending stress acting is,%f N/mm^2\n",fb)
Wb=fb*A//N
printf("the bending load on rope is,%f N\n",Wb)
a=v/(60*t)//acceleration
g=9.81//m/s^2
Wa=(W+w)/g*a//additonal load
printf("additional load due to acc si,%f N\n",Wa)
Wst=2*(W+w)
printf("the starting load acting is,%f N\n",Wst)
We=W+w+Wb//N
printf("effctive load during uniform velocity is,%f N\n",We)
Fsa=Designload/We
printf("actual factor of safety is,%f \n",Fsa)
printf("since factor of safety caculated above are safe,therefore wire rope of dia 38mm and 6*19 is chosen")