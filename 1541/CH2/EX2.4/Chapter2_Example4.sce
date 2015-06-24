//Chapter-2, Example 2.4, Page 2.7
//=============================================================================
clc
clear

//INPUT DATA
V1=2500;//primary voltage in V
V2=200;//Secondary voltage in V
e=(30*0.9);//Effective side of magnetic core in cm
A=(30*30*0.9*0.9*10^-4);//Area of cross section of the limb in m^2
B=1;//Maximum flux density in Wb/m^2
q=(B*A);//Maximum flux in Wb
f=50;//Frequency of power supply in Hz

//CALCULATIONS
N1=(V1/(4.44*f*q));//Number of turns in the primary
N2=(V2/(4.44*f*q));//Number of turns in the secondary

//OUTPUT
mprintf('Number of turns in the primary are %3.0f turns and Number of turns in the secondary are %3.0f turns',N1,N2)

//=================================END OF PROGRAM==============================
