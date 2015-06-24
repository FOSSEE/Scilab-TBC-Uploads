//Chapter-1, Example 1.40, Page 50
//=============================================================================
clc;
clear;
//INPUT DATA
R1=5;//resistance in ohms
P=20;//power dissipated in R1 in Watts
R2=10;//Resistance parallel to R1
//CALCULATIONS 
I1=sqrt(P/R1);//current through R1 in A
I=((R1+R2)/(R2))*(I1);//total supply current in A
mprintf("I=%d A",I); 
 //=================================END OF PROGRAM==============================
