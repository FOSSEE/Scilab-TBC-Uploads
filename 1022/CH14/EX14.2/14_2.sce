clc
//initialisation of variables
T= 116 //C
C1= 3.74*10^-16
C2= 1.44*10^-2
//CALCULATIONS
WLmax= (2893*10^-6)/(T+273)
Wb= (C1*(WLmax)^(-5))/((%e^(C2/2893*10^6))-1)
//RESULTS
printf ('Wavelength at which the maximum monochromatic emissive power = %.2e m',WLmax)
printf (' \n Coffecient of performnance= %.2e W/m^3',Wb)
