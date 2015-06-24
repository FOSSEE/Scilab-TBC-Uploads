//Chapter-2, Example 2.2, Page 2.5
//=============================================================================
clc
clear

//INPUT DATA
N1=400;//Number of turns in the primary
N2=30;//Number of turns in the secondary
Q=20000;//Rating of the transformer in VA
V1=2000;//Primary voltage in V
f=50;//Power supply frequency in Hz

//CALCULATIONS
K=(N2/N1);//Voltage transformation ratio
I1=(Q/V1);//Current in the primary in A
I2=(I1/K);//Current in the secondary in A
V2=(K*V1);//Secondary voltage in V
q=(V1/(4.44*f*N1));//Maximum flux in the core in Wb

//OUTPUT
mprintf('(a)Full load primary current is %3.0f A and secondary current is %3.2f A \n(b)Induced emf in the secondary is %3.0f V \n(c)Maximum flux in the core is %3.3f Wb',I1,I2,V2,q)

//=================================END OF PROGRAM==============================
