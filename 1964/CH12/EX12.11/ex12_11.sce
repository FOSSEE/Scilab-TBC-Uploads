//Chapter-12, Example 12.11, Page 353
//=============================================================================
clc
clear
//INPUT DATA
V=10;//output voltage in V
Il=200*10^-3;//load current in A
ripplefactor=0.02;
//CALCULATIONS
Rl=V/(Il);//resistance in ohms
//if we assume L=10H and C1=C2=C
L=10;//indcutance in henry 
C=sqrt(5700/(L*50*ripplefactor));
mprintf("the values of L and C for CLC section are %d H and %1.0f uF respectively",L,C)
//=================================END OF PROGRAM=======================================================================================================
