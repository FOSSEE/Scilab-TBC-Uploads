//Exa 7.1
clc;
clear;
close;
//given data
lamda=2*10^-6;// in m
C1=0.374*10^-15;
T=2000+273;// in K'
C2=1.4388*10^-2;

//(a)
// Formula Eb_lamda= (C1*lamda^-5)/[exp(C2/(lamda*T))-1]
Eb_lamda= (C1*lamda^-5)/[exp(C2/(lamda*T))-1];
disp(Eb_lamda,"Monochromatic emissive power at 2 micro wavelength in W/m^2 is :");

//(b)
// Formula lamda_max * T =2898 // in micro m K
lamda_max= 2898/T;// in micro m
disp(lamda_max,"Wave-length at which the emission is maximum in micro m");

//(c)
Elamdab_max=1.285*10^-5*T^5;// in W/m^2-m
disp(Elamdab_max,"Maximum emissive power in W/m^2-m : ");

//(d)
sigma=5.67*10^-8;
E=sigma*T^4;
disp(E,"Total emissive power in W/m^2 :");

//Note: Answer of  part (a) in the book is wrong


