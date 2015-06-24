//Chapter-5, Illustration 4, Page 252
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
x=0.05;//Ratio of clearance volume to swept volume
P1=1;//Pressure at point 1 in bar
T1=310;//Temperature at point 1 in K
n=1.2;//Adiabatic gas constant
P2=7;//Pressure at point 2 in bar
Pa=1.01325;//Atmospheric pressure in bar
Ta=288;//Atmospheric temperature in K

//CALCULATIONS
V1=1+x;//Ratio of volume of air sucked to stroke volume
V4=((P2/P1)^(1/n))/20;//Ratio of volume delivered to stroke volume
DV=V1-V4;//Difference in volumes
nv1=DV*100;//Volumetric efficiency
V=(P1*DV*Ta)/(T1*Pa);//Ratio of volumes referred to atmospheric conditions
nv2=V*100;//Volumetric efficiency referred to atmospheric conditions
W=(n*0.287*T1*((P2/P1)^((n-1)/n)-1))/(n-1);//Work required in kJ/kg

//OUTPUT
mprintf('Volumetric efficiency is %3.1f percent \n Volumetric efficiency referred to atmospheric conditions is %3.1f percent \n Work required is %3.1f kJ/kg',nv1,nv2,W)








//==============================END OF PROGRAM=================================
