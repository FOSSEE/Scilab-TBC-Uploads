//Chapter-2, Example 2.31, Page 2.58
//=============================================================================
clc
clear

//INPUT DATA
I2=400;//Full load secondary current in A
I1=(I2*0.2);//Full load secondary current in A
K=(I1/I2);//Turns ratio
Z1=complex(0.5,1.5);//Transformer parameter
Z2=complex(0.02,0.05);//Transformer parameter

//CALCULATIONS
Zo1=Z1+(Z2/K^2);//Transformer parameter
Vsc=(I1*Zo1);//Primary voltage under short circuit test in V
[A B]=polar(Vsc);//Primary voltage under short circuit test in V in polar form
B=atand(imag(Zo1)/real(Zo1));//Phase angle in degree

//OUTPUT
mprintf('Primary voltage under short circuit test is %3.1f and %3.2f degree V (polar form)',A,B)

//=================================END OF PROGRAM==============================
