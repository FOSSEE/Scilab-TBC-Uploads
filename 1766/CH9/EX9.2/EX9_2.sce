clc;funcprot(0);//Example 9.2
//Initilisation of Variables
L=1.4*10^-6;....//Wavelength of radiation emmiting by blackbody in Mew m
T=2500;....//Temparature of radiation emmiting by blackbody in K
R=5.67*10^-8;.....//Stefens boltsman constant 
C1=3.7415*10^-16;...//Constant 1 in W-m^2
C2=1.4388*10^-2;....//Constant 2 in W-m^2
//calculations
EbL=(C1*L^-5)/(exp(C2/(L*T))-1);....//Monocromatic emmissive power in W/m^2
Eb=R*T^4;....//Total emissive power in W/m^2
disp(EbL,"Monocromatic emmissive power in W/m^2:")
disp(Eb,"Total emissive power in W/m^2:")
