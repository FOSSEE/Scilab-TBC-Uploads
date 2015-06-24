//Chapter-2, Example 2.26, Page 2.49
//=============================================================================
clc
clear

//INPUT DATA
R1=6;//Primary resistance in ohm
R2=0.3;//Secondary resistance in ohm
X1=10;//Primary reactance in ohm
X2=0.5;//Secondary reactance in ohm
E1=2220;//primary induced emf in V
E2=220;//Secondary induced resistance in V
V1=2220;//Primary voltage drop in V
R=8;//Rate of transformer in KVA
K=E2/E1;//Transformer voltage ratio
cosQ=0.8;//Power factor
sinQ=0.6;//sine of Q

//CALCULATIONS
R02=R2+(K^2*R1);//Resistance refered to the secondary in ohms
X02=X2+(K^2*X1);//Reactance refered to the secondary in ohms
I2=((R*1000)/E2);//Secondary full load current in A
V02=(I2*R02*cosQ)+(I2*X02*sinQ);//Secondary voltage drop in V
V2=E2-V02;//Secondary terminal voltage in V

//OUTPUT
mprintf('Secondary terminal voltage at full load is %3.1f V',V2)

//=================================END OF PROGRAM==============================
