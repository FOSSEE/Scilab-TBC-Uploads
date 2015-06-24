clc
//initialization of varaibles
P1=15 //psia
T1=80+460 //R
dm=3 //lb
T2=75+460 //R
P2=25 //psia
//calculations
mratio=P1*T2/(P2*T1)
m2=dm/(1-mratio)
V2=m2*55.16*T2/(P2*144)
//results
printf("Volume of the apparatus = %.1f cu ft",V2)
