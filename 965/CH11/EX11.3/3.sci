clc;
clear all;
disp("monochromatic emmisive power")
T=2500+273;//K
l=1.2*10^(-6);// m
e=0.9;
sigma=5.67*10^(-8);
C1=3.742*10^(-15);// W m^4/m2
C2=1.4388*10^(-2);// mK
Elb=(C1*l^(-5))/(exp(C2/(l*T))-1);// W/m^2
disp("W/m^2",Elb,"monochromatic emmisive power at l= 1.2 mu m = ")
lmax=2898/T;
disp("mu m",lmax,"wavelength at which the emission is maximum is")
Elbmax = (1.285*10^(-5))*T^5;// W/m^2
disp("W/m^2 per meter length",Elbmax,"Maximum emissive power =")
Eb=sigma*T^4;//W/m^2
disp("W/m^2",Eb,"total emissive power =")
Eeb= e*Eb;//W/m^2
disp("W/m^2",Eeb,"Total emissive power with emissivity =")
