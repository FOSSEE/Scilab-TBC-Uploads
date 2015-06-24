//Chapter-3, Illustration 2, Page 140
//Title: Internal Combustion Engines
//=============================================================================
clc
clear

//INPUT DATA
Vs=0.0008;//Swept volume in m^3
Vc=0.00015;//Clearance volume in m^3
CV=38;//Calorific value in MJ/(m^3)
v=0.45;//volume in m^3
IP=81.5;//Indicated power in kW
y=1.4;//Ratio of specific heats

//CALCULATIONS
rv=(Vs+Vc)/Vc;//Compression ratio
n=(1-(1/rv^(y-1)));//Air standard efficiency
Ps=(v*CV*1000)/60;//Power supplied in kW
nact=IP/Ps;//Actual efficiency
nr=(nact/n)*100;//Relative efficiency

//OUTPUT
mprintf('Relative Efficiency is %3.2f percent',nr)



//==============================END OF PROGRAM=================================
