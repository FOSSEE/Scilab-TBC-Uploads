//Chapter-2, Example 2.19, Page 2.35
//=============================================================================
clc
clear

//INPUT DATA
Q=80;//Transformer rating in KVA
V1=11000;//Primart voltage in V
V2=440;//Secondary voltage in V
Pcu=0.75;//Primary copper loss in kW
Scu=0.5;//Secondary copper loss in kW

//CALCULATIONS
I2=(Q*1000)/V2;//Full load secondary current in A
I1=(Q*1000)/V1;//Full load primary current in A
R1=((Pcu)/I1^2)*1000;//Primary resistance in ohm
R2=(Scu*1000)/I2^2;//Secondary resistance in ohm
Xo1=(0.04*V1)/I1;// Equivalent primary reactance in ohm
K=(I1/I2);//Current ratio
X1=(Xo1/((R1+(R2/K))/(R2/K)));//Primary reactance in ohm
X2i=(Xo1/X1);//Equivalent secondary reactance in ohm
X2=(X2i*K);//Secondary reactance in ohm

//OUTPUT
mprintf('a)Primary resistance is %3.2f ohm and Secondary resistance in is  %3.3f ohm\nb)Primary reactance is %3.2f ohm and Secondary reactance is %3.3f ohm',R1,R2,X1,X2)

//=================================END OF PROGRAM==============================
