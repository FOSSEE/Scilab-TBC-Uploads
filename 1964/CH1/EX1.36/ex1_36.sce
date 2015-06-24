//Chapter-1, Example 1.36, Page 48
//=============================================================================
clc;
clear;
//INPUT DATA
Rs=25;//total resistance when two resistances are connected in series in ohms
Rp=6;//total resistance when two resistances are connected in parallel in ohms
//let individual resistances be R1 and R2 ohms
//CALCULATIONS 
//Rs=(R1+R2)---eqn(1)
//Rp=((R1*R2)/(R1+R2))---eqn(2)
//let (R1*R2)=x
//let(R1-R2)=y
//solving  eqn(1)and eqn(2)
x=Rs*Rp;//in ohms
y=sqrt((Rs)^2-(4*x));//eqn---(3)
//solving eqn(1) and eqn(3)
z=Rs+y;
R1=z/2;//resistance1 in ohms
R2=Rs-R1;//resistance2 in ohms
//OUTPUT
mprintf("Thus the individual resistances are R1=%d ohms and R2=%d ohms ",R1,R2); 
 //=================================END OF PROGRAM==============================
