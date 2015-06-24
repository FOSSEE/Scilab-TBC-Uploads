//Chapter 2,Ex2.42,Pg2.53
clc;
disp("Refer to the diagram shown in the question")
A=[14 -12;-12 16] //Apply KVL theorem to obtain the required result
B=[2;-4]
I=A\B
Vth=3*I(2)+4 //Thevenin voltage
printf("\n Vth=%.1f \n",Vth)
R1=((2*12)/(2+12))+1
Rth=R1*3/(R1+3)
Iload=Vth/(Rth+2)
printf("\n Il=%.2f \n",Iload)

