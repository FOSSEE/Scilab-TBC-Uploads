// Example 12.4, page no-351
clear
clc
alfe=8.8*10^-6//per K
t1=1300//K
t2=327//K
delT=t1-t2
E=370 //GPa
ep=alfe*delT
sig=ep*E
printf("\nThe unconstrained thermal expansion produced by the heating is %.4f *10^-3",ep*10^3)
printf("\nthe compression stress produced by heating is %.3f GPa",sig)
