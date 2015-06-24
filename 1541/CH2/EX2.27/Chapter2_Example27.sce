//Chapter-2, Example 2.27, Page 2.49
//=============================================================================
clc
clear

//INPUT DATA
Tr=36;//Transformer rating in terms of KVA
E1=5000;//Primary induced emf in V
E2=500;//Secondary induced emf in V
R01=22;//Winding resistance referred to the primary in ohm
X01=36;//Winding reactance referred to primary in ohm
cosQ1=0.8;//Primary power factor
cosQ2=0.8;//Secondary power factor
sinQ1=0.6;//sine of Q1

//CALCULATIONS
I1=((X01*1000)/E1);//Full load primary current in A
Vd=(I1*R01*cosQ1)+(I1*X01*sinQ1);//Secondary voltage drop in V
V=(Vd/E1)*100;//Percentage voltage regulation in %

//OUTPUT
mprintf('Percentage voltage regulation is %3.1f percent',V)

//=================================END OF PROGRAM==============================
