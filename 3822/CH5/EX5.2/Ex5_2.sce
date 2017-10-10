

//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 5.2
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
n=3.8;//refractive index
L=200*10^-4;//length in cm
W=100*10^-4;//width in cm
Beta=20*10^-3;//gain factor in A/cm^3
alpha=10;//loss coefficient per cm
R1=((n-1)/(n+1))^2;//reflectivity
c1=((alpha+((1/L)*(log(1/R1)))))//constant value
Jth=(1/Beta)*c1;//threshold current density in A/cm^2
mprintf("\n Threshold current density is= %.2f x10^3 A/cm^2",Jth*1e-3);//multiplication by 1e-3 to convert the ratio to 10^-3
Ith=Jth*L*W;//threshold current in A
mprintf("\n Threshold current is =%.2f mA",Ith*1e3);//the answer vary due to rouding
