//Chapter-2, Example 2.36, Page 2.67
//=============================================================================
clc
clear

//INPUT DATA
V1=500;//Primary voltage in V
V2=100;//Secondary voltage in V
K=(V2/V1);//Turn ratio
R1=0.04;//Primary resistance in ohm
R2=0.03;//Secondary resistance in ohm
Pi=200;//Iron or constant lossses in W

//CALCULATIONS
I2=sqrt(Pi/(R2+(R1*K^2)));//Secondary current in A
nmax1=((V2*I2)/((V2*I2)+Pi+Pi))*100;//Maximum efficiency at unit power factor
nmax8=((V2*I2*0.8)/((V2*I2*0.8)+Pi+Pi))*100;//Maximum efficiency at 0.8 power factor

//OUTPUT
mprintf('Maximum efficiency at unit power factor is %3.2f percent \nMaximum efficiency at 0.8 power factor is %3.2f percent',nmax1,nmax8)

//=================================END OF PROGRAM==============================
