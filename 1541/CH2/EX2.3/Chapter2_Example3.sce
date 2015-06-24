//Chapter-2, Example 2.3, Page 2.6
//=============================================================================
clc
clear

//INPUT DATA
A=(40*10^-4);//Area of cross section of the core A in m^2
B=8;//Maximum flux density in the core B in Wb/m^2
V1=2000;//Primary voltage in V
V2=200;//Secondary voltage in V
f=50;//Frequency in Hz

//CALCULATIONS
N1=(V1/(4.44*B*A*f));//Number of turns in the primary
N2=(V2/(4.44*f*A*B));//Number of turns in the secondary

//OUTPUT
mprintf('Number of turns in the primary is %3.0f \nNumber of turns in the secondary is%3.0f',N1,N2)
 
//=================================END OF PROGRAM==============================
