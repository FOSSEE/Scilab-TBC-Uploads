//Chapter-3, Example 3.6, Page 111
//=============================================================================
clc
clear
//INPUT DATA
N1=250;//no of turns in a coil
I1=2;//current in coil in A
phi1=0.3;//flux in coil in wb
dt=2//time in  millisec
Em2=63.75//induced voltage in V
K=0.75
//CALCULATIONS
L1=N1*(phi1/I1);//self inductance of first coil in H
M=Em2*(dt/I1);//mutual inductance of two coils in H
L2=((Em2/K)^2)/(L1);//self inductance of second coil in H
phi2=K*phi1;//flux in second coil in wb
N2=(Em2*dt)/phi2;//no of turns in second coil
//OUTPUT
mprintf("Thus the self inductance of first coil is %2.1f mH \n",L1);
mprintf("mutual inductance of two coils %2.2f mH \n",M);
mprintf("self inductance of second coil %4.0f mH \n",L2);
mprintf("no of turns in second coil %3.0f turns \n",N2);
//note:the answer given  for N2 in textbook is wrong .please check the calculations

//=================================END OF PROGRAM==============================


