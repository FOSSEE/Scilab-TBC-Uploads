//Calculate the additional reactive power capability at full load
clear;
clc;
P=1;//assuming
S1=P/.95;//For pf .95
S2=P/.8;//For pf .8
dMVA=(S2-S1)*100/P;//Increase in MVA rating 
Q1=P*tand(acosd(.95));//Q for pf .95
Q2=P*tand(acosd(.8));//Q for pf .8
dPc=(Q2-Q1)*100/Q1//Percent additional Reactive Power Capability 
mprintf("Percent additional Reactive Power Capability is %.0f",dPc)




