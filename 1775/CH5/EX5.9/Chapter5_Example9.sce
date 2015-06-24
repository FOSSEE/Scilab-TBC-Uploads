//Chapter-5, Illustration 9, Page 258
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
Va=15;//Volume of air in (m^3)/min
Pa=1.01325;//Pressure of air in bar
Ta=302;//Air temperature in K
P1=0.985;//Pressure at point 1 in bar
T1=313;//Temperature at point 1 in K
r=0.04;//Ratio of clearance volume to swept volume
y=1.3;//Ratio of stroke to bore diameter
N=300;//Speed in rpm
n=1.3;//Adiabatic gas constant
P2=7.5;//Pressure at point 2 in bar

//CALCULATIONS
x=((P2/P1)^(1/n))-1;//Ratio of volume at point 4 to clearance volume
a=x*r;//Ratio of volume at point 4 to swept volume
nv=1-a;//Volumetric efficiency
V1=(Pa*Va*T1)/(Ta*P1);//Volume at point 1 in (m^3)/min
Vs=V1/(nv*N*2);//Swept volume in m^3
D=((Vs*4)/(3.147*y))^(1/3);//Bore in m
L=y*D;//Stroke in m

//OUTPUT
mprintf('Cylinder bore in %3.3f m \n Cylinder stroke %3.3f m',D,L)






//==============================END OF PROGRAM=================================
