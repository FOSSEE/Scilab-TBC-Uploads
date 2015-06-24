//Chapter-2, Illustration 2, Page 57
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
d=80;//Bore in mm
L=85;//Stroke in mm
Vc=0.06;//Clearance volume in litre
n=0.22;//Actual thermal efficiency
y=1.4;//Ratio of specific heats

//CALCULATIONS
Vs=(3.147/4)*(d^2)*L;//Stroke volume in mm^3
Vt=Vs+(Vc*(10^6));//Total volume in mm^3
rv=Vt/(Vc*(10^6));//Compression ratio
ni=(1-(1/(rv^(y-1))));//Ideal thermal efficiency
nr=(n/ni)*100;//Relative efficiency

//OUTPUT
mprintf('Relative efficiency of the engine is %3.1f percent',nr)







//==============================END OF PROGRAM=================================
