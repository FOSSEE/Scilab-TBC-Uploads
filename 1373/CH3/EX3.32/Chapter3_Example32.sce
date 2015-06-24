//Chapter-3, Example 3.32, Page 116
//=============================================================================
clc
clear

//INPUT DATA
t=0.002;//Thickness of fin in m
L=0.015;//Length of fin in m
k1=210;//Thermal conductivity of aluminium in W/m.K
h1=285;//Heat transfer coefficient of aluminium in W/m^2.K
k2=40;//Thermal conductivity of steel in W/m.K
h2=510;//Heat transfer coefficient of steel in W/m^2.K

//CALCULATIONS
Lc=(L+(t/2));//Corrected length of fin in m
mLc1=Lc*sqrt((2*h1)/(k1*t));//Calculation of mLc for efficiency
n1=tanh(mLc1)/mLc1;//Efficiency of fin when aluminium is used
mLc2=Lc*sqrt((2*h2)/(k2*t));//Calculation of mLc for efficiency
n2=tanh(mLc2)/mLc2;//Efficiency of fin when steel is used

//OUTPUT
mprintf('Efficiency of fin when aluminium is used is %3.4f\nEfficiency of fin when steel is used is %3.3f',n1,n2)

//=================================END OF PROGRAM==============================
