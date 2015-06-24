clc;funcprot(0);//Example 9.3
//Initilisation of Variables
L=4.4*10^-6;....//Wavelength of radiation emmiting by blackbody in Mew m
R=5.67*10^-8;.....//Stefens boltsman constant 
EbL=2*10^3;....//Monocromatic emmissive power as per planks law in W/m^2
C1=3.7415*10^-16;...//Constant 1 in W-m^2
C2=1.4388*10^-2;....//Constant 2 in W-m^2
//calculations
T=(C2/log(((C1*L^-5)/EbL)+1))/L;....//Temparature of blackbody in K
disp(T,"Temparature of blackbody in K:")
