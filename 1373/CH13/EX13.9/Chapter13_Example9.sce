//Chapter-13, Example 13.9, Page 569
//=============================================================================
clc
clear

//INPUT DATA
CAs=0.02;//Carbon mole fraction
CAo=0.004;//Content of steel
CA=0.012;//Percet of depth
d=0.001;//Depth in m
H=(6*10^-10);//Diffusivity of carbon in m^2/s

//CALCULATIONS
X=(CA-CAs)/(CAo-CAs);//Calculation for erf function
n=0.48;//erf(n)=0.5; n=0.48
t=((d/(n*2))^2/(3600*H))*3600;//Time required to elevate the carbon content of steel in s

//OUTPUT
mprintf('Time required to elevate the carbon content of steel is %3.2f s',t)

//=================================END OF PROGRAM==============================
