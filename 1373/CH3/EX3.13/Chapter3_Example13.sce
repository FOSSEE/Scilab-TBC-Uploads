//Chapter-3, Example 3.13, Page 70
//=============================================================================
clc
clear

//INPUT DATA
Di=0.1;//I.D of the pipe in m
L=0.01;//Thickness of the wall in m
L1=0.03;//Thickness of insulation in m
Ta=85;//Temperature of hot liquid in degree C
Tb=25;//Temperature of surroundings in degree C
k1=58;//Thermal conductivity of steel in W/m.K
k2=0.2;//Thermal conductivity of insulating material in W/m.K
ha=720;//Inside heat transfer coefficient in W/m^2.K
hb=9;//Outside heat transfer coefficient in W/m^2.K
D2=0.12;//Inner diameter in m
r3=0.09;//Radius in m

//CALCULATIONS
q=((2*3.14*(Ta-Tb))/((1/(ha*(Di/2)))+(1/(hb*r3))+(log(D2/Di)/k1)+(log(r3/(D2/2))/k2)));//Heat loss fro an insulated pipe in W/m

//OUTPUT
mprintf('Heat loss fro an insulated pipe is %3.2f W/m',q)

//=================================END OF PROGRAM==============================
