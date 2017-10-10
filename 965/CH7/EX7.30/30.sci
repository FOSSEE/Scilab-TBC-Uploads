clc;
clear all;
disp("turbulent boundary layer")
disp("Cf=0.072/ReL^0.2")
disp("For entire plate, ReL=U*L/v")
disp("For  first half of the plate, Rex= U*L/(2*v)")
disp("Drag force per unit width for entire plate is, Fd=Cf*rho*U^2/2*Area per unit width")
disp("Drag force per unit width for entire plate is, Fd=Cf*rho*U^2/2*L")
disp("similarly the drag force per unit width for the front half portion of the plate is")
disp("Fd1 = (0.072/ReL^0.2)*rho*U^2/2*L/2")
disp("Fd2=Fd-Fd1 = (0.072/ReL^0.2)*rho*U^2/2*L/2(1-0.5*2^0.2)")
disp(" Fd1/Fd2 = (0.5*2^(1/5))/(1-0.5*2^(1/5))")
disp("Fd1/Fd2 =1.347")
