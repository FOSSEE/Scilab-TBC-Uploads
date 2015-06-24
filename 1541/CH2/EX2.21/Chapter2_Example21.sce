//Chapter-2, Example 2.21, Page 2.39
//=============================================================================
clc
clear

//INPUT DATA
V1=1000;//Primary voltage in V
V2=300;//Secondary voltage in V
R1=0.2;//Primary resistance in ohm
X1=0.75;//Primary reactance in ohm
I1=50;//Primary current in A
cosq1=0.8;//Power factor

//CALCULATIONS
E1=(V1-(I1*sqrt(R1^2+X1^2)));//Primary induced emf in V

//OUTPUT
mprintf('Primary induced emf is %3.1f V',E1)

//=================================END OF PROGRAM==============================
