clc
clear
//Initialization of variables
Q=6 //kJ/kg
p1=1.5 //Mpa
p2=0.1 //Mpa
t1=500 //C
t2=140.8 //C
h1=3473.1 //kJ
h2=2758.1 //kJ
s1=7.5698 //kJ/K
s2=7.5698 //kJ/K
eff=0.85
Ts=293.1 //K
//calculations
Wideal=h2-h1
Ws=eff*Wideal
dH=-Q-Ws
H2=h1+dH
S2=7.8005
ds=S2-s1
Wlost=Ts*ds+Q
//results
printf("lost work = %.1f kJ",Wlost)
