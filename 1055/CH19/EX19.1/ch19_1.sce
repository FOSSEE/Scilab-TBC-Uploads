// To Determine the economic operating schedule and the corresponding cost of generation.(b)Determine the savings obtained by loading the units.
clear 
clc;
//dF1/dP1=.4*P1+40 per MWhr
//dF2/dP2=.5*P1+30 per MWhr
mprintf("two equations are :\n");
mprintf("%.1f P1 %.1f P2 = %.1f\n",.4,-.5,-10);
mprintf("%.1f P1+ %.1fP2 = %.1f\n",1,1,180);
A=[.4 -.5;1 1];
B=[-10;180];
P=(inv(A))*B;
P1=P(1,1);
P2=P(2,1);
F1=.2*(P1)^2 +40*P1+120;
F2=.25*(P2)^2+30*P2+150;
Total=F1+F2;//Total cost
mprintf("(a)Cost of Generation=Rs %.2f /hr\n",Total);
P1=90;
P2=90;
F1=.2*(P1)^2 +40*P1+120;
F2=.25*(P2)^2+30*P2+150;
Total2=F1+F2;//Total cost
savings=Total2-Total
mprintf("(b)Savings=Rs %.2f /hr\n",savings)
