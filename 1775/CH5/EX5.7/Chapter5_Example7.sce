//Chapter-5, Illustration 7, Page 255
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
D=0.2;//Bore in m
L=0.3;//Stroke in m
r=0.05;//Ratio of clearance volume to stroke volume
P1=97;//Pressure at entry in kN/(m^2)
P4=P1;//Pressure at point 4 in kN/(m^2)
T1=293;//Temperature at point 1 in K
P2=550;//Compression Pressure in kN/(m^2)
P3=P2;//Pressure at point 3 in kN/(m^2)
n=1.3;//Adiabatic gas constant
N=500;//Speed of compressor in rpm
Pa=101.325;//Air pressure in kN/(m^2)
Ta=288;//Air temperature in K

//CALCULATIONS
x=(n-1)/n;//Ratio
DV=(3.147*L*(D^2))/4;//Difference in volumes in m^3
V3=r*DV;//Clearance volume in m^3
V1=V3+DV;//Volume at point 1 in m^3
V4=V3*((P3/P4)^(1/n));//Volume at point 4 in m^3
Vs=V1-V4;//Effective swept volume in m^3
EVs=Vs*N;//Effective swept volume per min
Va=(P1*EVs*Ta)/(Pa*T1);//Free air delivered in (m^3)/min
nV=((V1-V4)/(V1-V3))*100;//Volumetric effciency
T2=T1*((P2/P1)^x);//Air delivery temperature in K
t2=T2-273;//Air delivery temperature in oC
W=(n*P1*(V1-V4)*(((P2/P1)^x)-1))*N/((n-1)*60);//Cycle power in kW
Wiso=P1*V1*(log(P2/P1));//Isothermal workdone
P=(n*P1*V1*(((P2/P1)^x)-1))/(n-1);//Cycle power neglecting clearance
niso=(Wiso/P)*100;//Isothermal efficiency

//OUTPUT
mprintf('Free air delivered is %3.3f (m^3)/min \n Volumetric efficiency is %3.0f percent \n Air delivery temperature is %3.1f oC \n Cycle power is %3.0f kW \n Isothermal efficiency is %3.1f percent',Va,nV,t2,W,niso)










//==============================END OF PROGRAM=================================
