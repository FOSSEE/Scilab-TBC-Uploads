//Chapter-5, Example 5.41, Page 208
//=============================================================================
clc
clear
//INPUT DATA
P1=1000;//power1 in watts
P2=1000;//power2 in watts
//CALCULATIONS
//for case(1)
Pt=P1+P2;//total power in watts
phi=atan(sqrt(3)*((P2-P1)/(P2+P1))*(180/%pi));//since tan(phi)=sqrt(3)*((P2-P1)/(P2+P1)))
pf=cos(phi);
mprintf("Thus power and powerfactor are %d W ,%d respectively\n",Pt,pf);
//for case(2)
P3=1000;//power3 in watts
P4=-1000;//power4 in watts
Pt1=P3+P4;//total power in watts
pf1=0;//since we cannot perform division by zero in scilab,it doesn't consider it as infinite quantity to yield 90 degree angle and hence powerfactor 0
mprintf("Thus power and powerfactor are %d W ,%d respectively",Pt1,pf1);
//=================================END OF PROGRAM======================================================================================================
