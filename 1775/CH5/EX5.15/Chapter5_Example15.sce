//Chapter-5, Illustration 15, Page 265
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
P1=1;//Pressure at point 1 in bar
T1=290;//Temperature at point 1 in K
P3=60;//Pressure at point 3 in bar
P2=8;//Pressure at point 2 in bar
T2=310;//Temperature at point 2 in K
L=0.2;//Stroke in m
D=0.15;//Bore in m
n=1.35;//Adiabatic gas constant
N=200;//Speed in rpm

//CALCULATIONS
x=(n-1)/n;//Ratio
V1=(3.147*(D^2)*L)/4;//Volume at point 1 in m^3
V2=(P1*V1*T2)/(T1*P2);//Volume of air entering LP cylinder in m^3
W=((P1*(10^5)*V1*(((P2/P1)^x)-1))/x)+((P2*(10^5)*V2*(((P3/P2)^x)-1))/x);//Workdone by compressor per cycle in J
P=(W*N)/(60*1000);//Power of compressor in kW

//OUTPUT
mprintf('Power of compressor is %3.2f kW',P)








//==============================END OF PROGRAM=================================
