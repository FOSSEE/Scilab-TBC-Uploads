//Chapter 2
//Example 2.9
//Page 67

clear;
clc;

R1 = 5000;
R2 = 5000;
R3 = 1000;
R4 = 990;
R5 = 10;
Vx =10;
Pot = 0.012;

//Finding Current necessary to null the bridge
printf("First an examination of the resistancs show \n that the bridge is nulled when I = 0 and Vx = 0\n from the equation (Vx)+((R3*V)/(R1+R3))-(V*(R4+R5)/(R2+R4+R5))-(I*R5)=0")
x=(R3*Vx)/(R1+R3);
printf("(R3*V)/(R1+R3))=%.3f V\n",x)
y=(Vx*(R4+R5)/(R2+R4+R5))
printf("(V*(R4+R5)/(R2+R4+R5))=%.3f V",y)
z = Pot/R5*1000;
printf("\n Thus,we can use equation Vx-IR5=0: \n 12mV-10I=0 \n Thus I = %0.1f mA",z)

