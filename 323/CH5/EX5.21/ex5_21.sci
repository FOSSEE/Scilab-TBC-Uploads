//Ex5.21,Pg5.23
clc;
//Given x=1 and pf=1 we obtain the first equation
//With x=0.5 and pf=1 we obtain the second equation
A=[1 1;1 0.25]
B=[52.2;26.1]
W=A\B
printf("\n Copper loss=%.1f kW \n",W(2))
printf("\n Iron loss=%.1f kW \n",W(1))
//Now if x=0.6 and pf=1
n= (0.6*600*1/((0.6*600*1)+W(1)+((0.6^2)*W(2))))*100
printf("\n Efficiency=%.2f percent \n",n)
 