//Chapter-2, Example 2.12, Page 2.20
//=============================================================================
clc
clear

//INPUT DATA
N1=100;//Number of turns in the primary
N2=2000;//Number of turns in the secondary
V1=220;//Primary volatge in V
f=50;//Supply frequency in Hz
I2=3;//Secondary current in A

//CALCULATIONS
K=(N2/N1);//Turn ratio
I1=(K*I2);//Primary current in A
q=(V1/(4.44*f*N1))*1000;//Peak vaue of flux linked with the secondary in m.Wb

//OUTPUT
mprintf('(a)The value of primary current is %3.0f A \n(b)The peak value of flux linked with the secondary is %3.1f m.Wb',I1,q)

//=================================END OF PROGRAM==============================
