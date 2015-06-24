//Chapter-5, Illustration 12, Page 261
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
L=0.15;//Stroke in mm
D=0.15;//Bore in mm
N=8;//Speed in rps
P1=100;//Pressure at point 1 in kN/(m^2)
P2=550;//Pressure at point 2 in kN/(m^2)
n=1.32;//Adiabatic gas constant
C=0.06;//Ratio of clearance volume to swept volume

//CALCULATIONS
x=(n-1)/n;//Ratio
nv=(1+C-(C*((P2/P1)^(1/n))))*100;//Volumetric efficiency
DV=(3.147*(D^2)*L)/4;//Difference in volumes at points 1 and 3
DV1=(nv*DV)/100;//Difference in volumes at points 1 and 4
V2=DV1*((P1/P2)^(1/n))*N;//Volume of air delivered per second
W=(P1*DV1*(((P2/P1)^x)-1))*N/x;//Power of compressor in kW

//OUTPUT
mprintf('Theoretical volume efficiency is %3.1f percent \n Volume of air delivered is %3.5f (m^3)/s \n Power of compressor is %3.3f kW',nv,V2,W)









//==============================END OF PROGRAM=================================
