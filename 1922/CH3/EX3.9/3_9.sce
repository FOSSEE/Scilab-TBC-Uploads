clc
clear
//Initialization of variables
eff=0.75
Hf=[-110600 -241980 -393770 0]
Hc=[30.35 36 45.64 29.30]
T2=540 //C
T1=25 //C
mass=500 //kmol H2 produced
//calculations
dHr= Hf(3) + Hf(4) - Hf(1) -Hf(2)
dHpr= (eff*(Hc(3) +Hc(4)) + (1-eff)*(Hc(2)+Hc(1)))*(T2-T1)
q= dHr*eff +dHpr
heat = q*mass/eff
//results
printf("Heat produced = %.3e kJ",heat)
