clc
T=2773; //K
lambda=1.2*10^(-6); //m
e=0.9;
a=5.67*10^(-8);

disp("(i) Monochromatic emissive power at 1.2 μm length")
C1=0.3742*10^(-15); //W.m^4/m^2
C2=1.4388*10^(-4); //mK
E_lambda_b=C1*lambda^(-5)/(exp(C2/lambda/T)-1);
disp("E_lambda_b =")
disp(E_lambda_b)
disp("W/m^2")


disp("(ii) Wavelength at which the emission is maximum =")
lambda_max=2898/T;
disp(lambda_max)
disp("μm")


disp("(iii) Maximum emissive power =")
E_lambda_b_max=1.285*10^(-5)*T^5;
disp(E_lambda_b_max)
disp("W/m^2 per metre length")


disp("(iv) Total emissive power =")
Eb=a*T^4;
disp(Eb)
disp("W/m^2")


disp("(v) Total emissive power =")
E=e*a*T^4;
disp(E)
disp("W/m^2")
