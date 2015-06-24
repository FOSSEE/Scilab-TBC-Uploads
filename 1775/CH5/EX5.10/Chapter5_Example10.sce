//Chapter-5, Illustration 10, Page 259
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
P1=0.98;//Pressure at point 1 in bar
P4=P1;//Pressure at point 4 in bar
P2=7;//Pressure at point 2 in bar
P3=P2;//Pressure at point 3 in bar
n=1.3;//Adiabatic gas constant
Ta=300;//Air temperature in K
Pa=1.013;//Air pressure in bar
T1=313;//Temperature at point 1 in K
c=0.04;//Ratio of clearance volume to swept volume
Va=15;//Volume of air delivered in m^3
R=0.287;//Universal gas constant in kJ/kg-K

//CALCULATIONS
x=(n-1)/n;//Ratio
r=(P2/P1)^(1/n);//Ratio of volumes
a=r*c;//Ratio of volume at point 4 to swept volume
DV=1+c-a;//Difference in volumes
V=(P1*DV*Ta)/(T1*Pa);//Volume of air delivered per cycle
nv=V*100;//Volumetric efficiency
DV1=(Pa*Va*T1)/(Ta*P1);//Difference in volumes
T2=T1*((P2/P1)^x);//Temperature at point 2 in K
ma=(Pa*100*Va)/(R*Ta);//Mass of air delivered in kg/min
IP=(ma*R*(T2-T1))/(x*60);//Indicated power in kW
Piso=(ma*R*T1*log(P2/P1))/60;//Isothermal indicated power in kW
niso=(Piso/IP)*100;//Isothermal efficiency

//OUTPUT
mprintf('Volumetric efficiency is %3.1f percent \n Indicated power is %3.2f kW \n Isothermal efficiency is %3.0f percent',nv,IP,niso)














//==============================END OF PROGRAM=================================
