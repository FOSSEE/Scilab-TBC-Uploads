//Chapter-5, Illustration 6, Page 254
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
D=0.2;//Bore in m
L=0.3;//Stroke in m
r=0.05;//Ratio of clearance volume to stroke volume
P1=1;//Pressure at point 1 in bar
T1=293;//Temperature at point 1 in K
P2=5.5;//Pressure at point 2 in bar
n=1.3;//Adiabatic gas constant
N=500;//Speed of compressor in rpm

//CALCULATIONS
x=(n-1)/n;//Ratio
Vs=(3.147*L*(D^2))/4;//Stroke volume in m^3
Vc=r*Vs;//Clearance volume in m^3
V1=Vc+Vs;//Volume at point 1 in m^3
V4=Vc*((P2/P1)^(1/n));//Volume at point 4 in m^3
EVs=V1-V4;//Effective swept volume in m^3
W=(P1*(10^5)*EVs*(((P2/P1)^x)-1))/x;//Work done in J/cycle
MEP=(W/Vs)/(10^5);//Mean effective pressure in bar
P=(W*N)/(60*1000);//Power required in kW

//OUTPUT
mprintf('Mean effective pressure is %3.2f bar \n Power required is %3.2f kW',MEP,P)






//==============================END OF PROGRAM=================================
