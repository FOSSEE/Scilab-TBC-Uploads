//Chapter-2, Example 2.32, Page 2.58
//=============================================================================
clc
clear

//INPUT DATA
Q=250*1000;//Rating of a transformer in VA
V1=11000;//Rated primary voltage in V
V2=2200;//Rated secondary voltage in V
N1=1000;//Number of turns in the primary
N2=200;//Number of turns in the secondary
R1=1.5;//Primary resistance in ohm
R2=0.05;//Secondary resistance in ohm
Vsc=600;//Primary voltage when secondary is short circuited in V
n=0.99;//Efficiency of the transformer

//CALCULATIONS
K=(N2/N1);//Turn ratio
I1=(Q/(V1*n));//Full load primary current in A
Zo1=(Vsc/I1);//Equivalent reactance in ohm
R2i=(R2/K^2);//Equivalent secondary resistance in ohm
Ro1=(R1+R2i);//Equivalent primary resistance in ohm
Xo1=sqrt(Zo1^2-Ro1^2);//Equivalent ractance in ohm

//OUTPUT
mprintf('Equivalent resistance referred to primary is %3.2f ohm \nEquivalent reactance referred to primary is %3.2f ohm',Ro1,Xo1)

//=================================END OF PROGRAM==============================
