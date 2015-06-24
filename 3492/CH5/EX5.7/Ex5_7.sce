clc
//Chapter5
//Ex_7
//Given
Nd=10^15 //in cm^-3
Nc=2.8*10^19 //in cm^-3
Ti=556 // in Kelvin
k=8.62*10^-5 //in eV/K
delta_E=0.045 //in eV
T=300 //in kelvin
//part(a)
disp("From fig 5.16 the estimated temperature above which the si sample behaves as if intrinsic is 556 Kelvin")
//part(b)
Ts=delta_E/(k*log(Nc/(2*Nd)))
Nc_Ts=Nc*(Ts/T)^(3/2)
disp(Ts,"Lowest temperature in kelvin is")
//the improved temperature 
Ts=delta_E/(k*log(Nc_Ts/(2*Nd)))
printf("Extrinsic range of Si is %f K to 556 K",Ts)
