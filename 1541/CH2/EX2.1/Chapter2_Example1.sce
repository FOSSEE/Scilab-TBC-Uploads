//Chapter-2, Example 2.1, Page 2.4
//=============================================================================
clc
clear

//INPUT DATA
V1=1000;//Voltage in primary circuit in V
V2=100;//Voltage in secondary ciricut in V
N2=60;//Number of turns in secondary 
R=10000;//Rating of transformer in VA

//CALCULATIONS
K=(V2/V1);//Voltage transformation ratio
N1=(N2/K);//Number of turns in primary
I1=(R/V1);//Current in the primary in A
I2=(R/V2);//Current in the secondary in A

//OUTPUT
mprintf('a)Number of turns in the primary is %3.0f turns \nb)Current in the primary is %3.0f A and Current in the secondary is %3.0f A',N1,I1,I2)

//=================================END OF PROGRAM==============================
