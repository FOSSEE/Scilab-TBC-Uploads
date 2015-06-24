//example 18.2
clc; funcprot(0);
// Initialization of Variable
sigma=5.67e-8;
lambda1=2200;//mum
T=2000;//K
C1=3.742e8;//mum^4/m^2
C2=1.439e8;
lambdamax=1.45;//mum
E=sigma*T^4;
disp(E,"spectral emmisive power in W/m^2");
lambda=lambda1/T;
disp(lambda,"wavelength corresponding to upper limit in mum");
E=C1/lambdamax^5/(exp(C2/lambdamax/T)-1);
disp(E,"emissive power in W/m^2.mum");
disp("G=9.07*10^5 in W/m^2");
clear()
