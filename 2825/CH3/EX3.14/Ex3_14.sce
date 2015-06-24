//Ex3_14 Pg-190
clc

disp("      Diodes D2 and D3 are reverse-biased. Therefore,  these are like open-switches. Diodes D1 and D2 are forward biased. These are replaced by their equivalent circuits,as shown in figure 3.54. Since the diodes are silicon V=0.7V. ")
Vt=0.7 //voltage drop
Vaa=20 //supply voltage in V
net_emf=Vaa-Vt-Vt //net emf
R1=5  
R2=90
R3=5 //R1,R2,R3 are resistances
tot_res=R1+R2+R3 //total resistance
disp("Therefore, current through 90 ohm resistor is")
I=net_emf/tot_res
printf("\n Current I =%.0f mA",I*10^3)
