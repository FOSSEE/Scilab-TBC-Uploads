//chapter-8 page 347 example 8.14
//==============================================================================
clc;
clear;

//For aa X-band cylindrical magnetron
a=0.04;//inner radius in m
b=0.08;//outer radius in m
B=0.01;//magnetic flux density in Wb/sqm
x=1.759*10^11;//Value of e/m in C/kg
V=30000;//beam voltage in V

//CALCULATION
w=(x*B)/10^9;//Cyclotron angular frequency in 10^9 rad/sec
VHC=((x/8)*(B^2)*(b^2)*(1-(a/b)^2)^2)/1000;//Hull cut-off voltage in kV
Bc=((sqrt(8*(V/x)))/(b*(1-(a/b)^2)))*1000;//Cut-off magnetic flux density in mWb/sqm

//OUTPUT
mprintf('\nCyclotron angular frequency is w=%1.3f *10^9 rad/sec \nHull cut-off voltage is VHC=%1.4f kV \nCut-off magnetic flux density is Bc=%2.3f mWb/sqm',w,VHC,Bc);

//=========================END OF PROGRAM===============================
