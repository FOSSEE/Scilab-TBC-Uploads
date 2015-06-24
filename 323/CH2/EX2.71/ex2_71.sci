//Chapter 2,Ex2.71,Pg2.88
clc;
disp("Refer to the diagram shown in the question")
A=[-1 1 0;1 10 -10;0 -10 15]
B=[1;5;0]
I=A\B
printf("\n I1=%.2f A \n",I(1))
printf("\n I2=%.2f A \n",I(2))
printf("\n I3=%.2f A \n",I(3))
//Calculation of Vth
Vth=3*I(3)
printf("\n Vth=%.2f V \n",Vth)
//Calculation of Rth
Rth=[(10*1/(10+1))+2]*3/(3+[(10*1/(10+1))+2]) + 5
printf("\n Rth=%.2f ohms \n",Rth)
//Calculation of Pmax
Pmax=(Vth*Vth/(4*Rth))
printf("\n Pmax=%.2f W \n",Pmax)
