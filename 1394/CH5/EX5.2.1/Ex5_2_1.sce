
clc
//Initialization of variables
R0 = 1.73*10^-8 //cm
kb = 1.38*10^-16 // g-cm^2/sec^2-K
T = 298 // kelvin
Mu = 0.01 // g/cm-sec
Mu2 = 1 // Centipoise
DE = 1.80//x*10^-5 cm^2/sec
phi = 2.6
VH2O = 18 // cc/g-mol
VO2 = 25 // cc/g-mol
//calculations
D1 = ((kb*T)/(6*%pi*Mu*R0))*10^5// x*10^-5 cm^2/sec
err1 = (DE-D1)*100/DE // error percentage
D2 = (((8.2*10^-8)*T/(Mu2*((VO2)^(1/3))))*(1+ ((3*VH2O/VO2)^(2/3))))*10^5 //x*10^-5 cm^2/sec
err2 = (D2-DE)*100/DE // Error percentage
D3 = (((7.4*10^-8)*((phi*VH2O)^0.5)*T)/(Mu2*((VO2)^0.6)))*10^5//x*10^-5 cm^2/sec
err3 = (D3-DE)*100/DE// Error percentage 
//Results
printf("The diffusion co efficent using Stokes einstien correlation is %.1f x10^-5 cm^2/sec",D1)
printf("\nThe error regarding above correlation is %.1f percent low",err1)
printf("\nThe diffusion co efficent using Wilke-Chang correlation is %.1f x10^-5 cm^2/sec",D3)
printf("\nThe error regarding above correlation is %.1f percent high",err3)
