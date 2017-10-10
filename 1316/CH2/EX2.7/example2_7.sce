//Chapter 2
//Example 2.7
//Page 65

clear;
clc;

R1 = 10000.00;
R2 = 10000.00;
R3 = 1000;
R4 = 950.00;
R5 = 50.00;
Del_R3 = 1;
V =10.00;

//Calculation of Current required
printf("First,for the nominal resistance values given, \n the bridge is set at anull with I=0,because\n")

//Calculation of Va
x = (V * R3)/(R1 + R3)
printf("Va = %f V \n",x)

//Calculation of Vb
printf("With I=0 we get \n")
y = ((V) * (R4+R5))/(R2 + R4 + R5)
printf("Vb = %f V \n",y)

//Calculation of Va for change in R3 
printf("When R3 increases by 1 ohm to 1001 ohm, Va becomes")
z = (V * (R3+1000))/(R1 + (R3+1000))
printf("Va = %f V \n",z)
printf("which shows that the voltage at b must increase by 0.0008 V to renull the bridge.\nThis can be proved by current,from equation and Delta V=0,found from \n")
I = 0.0008/50;
printf("I = %f A",I)
