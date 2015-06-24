//Determine the minimum cost of generation .
clear 
clc;
//dF1/dP1=.048*P1+8
//dF2/dP2=.08*P1+6
mprintf("two equations are :\n");
mprintf("%.3f P1 %.2f P2 = %.1f\n",.048,-.08,-2);
mprintf("%.1f P1+ %.1fP2 = %.1f\n",1,1,50);
A=[.048 -.08;1 1];
B=[-2;50];
P=(inv(A))*B;
P1=P(1,1);
P2=P(2,1);
F1=(.024*(P1)^2 +8*P1+80)*(10^6);
F2=(.04*(P2)^2+6*P2+120)*(10^6);
mprintf("when load is 150MW , equations are: :\n");
mprintf("%.3f P1 %.2f P2 = %.1f\n",.048,-.08,-2);
mprintf("%.1f P1+ %.1fP2 = %.1f\n",1,1,150);
A=[.048 -.08;1 1];
B=[-2;150];
P=(inv(A))*B;
P1=P(1,1);
P2=P(2,1);
f1=(.024*(P1)^2 +8*P1+80)*(10^6);
f2=(.04*(P2)^2+6*P2+120)*(10^6);
Total=(F1+F2+f1+f2)*12*2/(10^6);
mprintf("Total cost=Rs. %.2f",Total)
