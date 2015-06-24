//Chapter 5, Problem 24, figure 5.72
clc
Rs=10                      //resistance in ohm
Rl=50                      //resistance in ohm
Q=10                         //Q factor

//calculation
Rv=Rs*(Q^2+1)
Xs1=Q*Rs
Xp1=Rv/Q
Q2=sqrt((Rv/Rl)-1)
Xp2=Rv/Q2
Xs2=Q2*Rl

printf("Zs = %d ohm\nXp1 = %.3f ohm \nXs1 = %.3f ohm\n",Rs,Xp1,Xs1)
printf("Xs2 = %.3f ohm\n Xp2 = %.3f ohm\n Zl = %d ohm\n\n",Xs2,Xp2,Rl)
disp("Four types of matching network is shown in figure 5.66, 5.67, 5.68, 5.69.")
