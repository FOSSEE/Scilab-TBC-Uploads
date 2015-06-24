//Chapter 5, Problem 23, figure 5.65
clc
Rs=100                      //resistance in ohm
Rl=1000                      //resistance in ohm
Q=15                         //Q factor

//calculation
Rv=Rl/(Q^2+1)
Xp2=Rl/Q
Xs2=Q*Rv
Q1=sqrt((Rs/Rv)-1)
Xp1=Rs/Q1
Xs1=Q1*Rv

printf("Zs = %d ohm\nXp1 = %.3f ohm \nXs1 = %.3f ohm\n",Rs,Xp1,Xs1)
printf("Xs2 = %.3f ohm\n Xp2 = %.3f ohm\n Zl = %d ohm\n\n",Xs2,Xp2,Rl)
disp("Four types of matching network is shown in figure 5.66, 5.67, 5.68, 5.69.")
