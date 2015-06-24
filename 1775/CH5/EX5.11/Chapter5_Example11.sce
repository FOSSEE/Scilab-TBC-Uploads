//Chapter-5, Illustration 11, Page 261
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
V1=7*(10^-3);//Volume of air in (m^3)/s
P1=1.013;//Pressure of air in bar
T1=288;//Air temperature in K
P2=14;//Pressure at point 2 in bar
n=1.3;//Adiabatic gas constant
nm=0.82;//Mechanical efficiency

//CALCULATIONS
x=(n-1)/n;//Ratio
W=(P1*100*V1*(((P2/P1)^x)-1))/x;//Work done by compressor in kW
P=W/nm;//Power requred to drive compressor in kW

//OUTPUT
mprintf('Power requred to drive compressor is %3.2f kW',P)








//==============================END OF PROGRAM=================================
