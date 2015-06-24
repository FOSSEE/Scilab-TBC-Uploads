//Chapter-3, Example 3.5, Page 111

//=============================================================================
clc
clear
//INPUT DATA
L1=0.25;//self inductance of coil in henry(H)
N1=500;//no of turns of coil 1
N2=10500;//no of turns of coil 2
phi2=0.6*L1;//60 % of flux of first coil(m1) is linked with second coil(m2)
z=100;//rate of change of current(dii/dt) in A/sec

//CALCULATIONS
x=L1/N1;//flux/ampere in first coil(phi1/I1)
y=0.6*(x);//flux linking the second coil(phi2/I1)
M=N2*(y);//mutual inductance between the two coils in H
E=M*(z);//induced emf in V
//OUTPUT
mprintf("Thus the mutual inductance between two coils is %1.2f H \n",M);
mprintf("The induced emf in second coil when current changes in first coil is %3.0f V \n",E);

//=================================END OF PROGRAM==============================
