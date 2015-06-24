// Exa 7.2
clc;
clear;
close;
// Given data
Z1= 1000;// in Ω
theta1= -90;// in °
Z2= 500;// in Ω
theta2= 0;// in °
Z3= 1000;// in Ω
theta3= 0;// in °
R4= 100;// in Ω
XL4= 500;// in Ω
Z4=abs(R4+%i*XL4);// in °
theta4= atand(imag(R4+%i*XL4),real(R4+%i*XL4));// in °
if theta1+theta4 = =  theta2+theta3 then
    disp("The first condiiton is satisfied.")
else
disp("Balance is not possible with given configuration")
end
// 1/Z1=1/R1+j*omega*C1     (i)
// According to figure  1/Z1= R4/(Z2*Z3)+%i*XL4/(Z2*Z3)        (ii) 
// Comparing real and j-components of Eqn (i) and (ii)
R1= Z2*Z3/R4;// in Ω
OmegaC1= Z2*Z3/XL4;// in Ω
disp("Since X_C1 is already equal to "+string(OmegaC1)+" Ω, the bridge can be balanced simply by placing a")
disp("resistance of "+string(R1)+" Ω across the capacitor arm 1")
// Z3= R3-j*X_C3        (iii)
Z3= Z1*expm(%i*theta1*%pi/180)*Z4*expm(%i*theta4*%pi/180)/(Z2*expm(%i*theta2*%pi/180));//       (iv)
// Comparing real and j-components of Eqn (iii) and (iv)
R3= 1000;// in Ω
XC3= 200;// in Ω
disp("Since R3 is already of "+string(R3)+" Ω, the bridge can be balanced simply by adding a")
disp("capacitor of reactance X_C3 of "+string(XC3)+" Ω in series with the resistor R3 in arm 3.")
