//Ex5.20,Pg5.22
clc;
n1=98.135 //Given efficiency
n2=97.751 //Given efficiency
x=1 //Full load
pf=0.8 //Power factor
//Using the above data we have to solve 2 simultaneous equations by substituting the values in the formula for calculating the efficiency
A=[1 1;1 0.25]
B=[3.8; 2.3]
W=A\B
printf("\n Full load copper loss =%.0f kW \n",W(2))
printf("\n Iron loss =%.1f kW \n",W(1))

