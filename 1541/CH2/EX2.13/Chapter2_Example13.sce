//Chapter-2, Example 2.13, Page 2.21
//=============================================================================
clc
clear

//INPUT DATA
N1=1100;//Number of turns in the primary
N2=550;//Number of turns in the secandary
V1=200;//Primary voltage in V
R2=5;//Resistance in the secondary in ohm

//CALCULATIONS
K=(N2/N1);//Turn ratio
V2=(K*V1);//Secondary voltage in V
I2=(V2/R2);//Current in the secondary in A
I1=(K*I2);//Current in the primary in A

//OUTPUT
mprintf('(a)Secondary voltage is %3.0f V\n(b)Primary current is %3.0f A\n(c)Secondary current is %3.0f A',V2,I2,I1)

//=================================END OF PROGRAM==============================
