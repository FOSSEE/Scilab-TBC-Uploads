//Chapter-12, Example 12.9, Page 351
//=============================================================================
clc
clear
//INPUT DATA
Rl=500;//resistance of load in ohms
f=400;//frequency in hz
ripplefactor=0.1;
//CALCULATIONS
C=inv(4*sqrt(3)*f*Rl*ripplefactor);//capacitance in uF
mprintf("thus capacitance is %g F",C);
//note:ripple factor is 0.1 not 0.01 as mentioned by problem in text book
//=================================END OF PROGRAM======================================================================================================
