//Chapter-12, Example 12.10, Page 352
//=============================================================================
clc
clear
//INPUT DATA
V=10;//output voltage in V
Il=200*10^-3;//load current in A
//CALCULATIONS
Rl=V/(Il);//effective load resistance in ohms
ripplefactor=0.02;
//critical value occurs at f=50 hz
f=50;//freq in hz
L=Rl/(3*2*%pi*f);//inductance in H
//but taking L=60mh(about 20 percentage higher)we have 
L1=60*10^-3;//inductance in henry
C=1.194/(ripplefactor*L1);
mprintf("the values of L and C for LC filter are %g H and %g F respectively",L1,C)
//note:C value calculated is wrong in textbook
//=================================END OF PROGRAM======================================================================================================
