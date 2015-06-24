clear;
clc;

// Illustration 6.1
// Page: 324

printf('Illustration 6.1 -  Page: 324\n\n');

// solution
//*****Data*****//
//   n-heptane - a    n-octane - b
T1 = 303; // [K]
P = 1; // [bar]
D = 0.6;
W = 0.4;
zf = 0.5;
 
// Parameters for componenr 'A'
Tc_a = 540.3; // [K]
Pc_a = 27.4; // [bar]
A_a = -7.675;
B_a = 1.371;
C_a =-3.536;
D_a = -3.202;

// Parameters for component 'B'
Tc_b = 568.8; // [K]
Pc_b = 24.9; // [bar]
A_b = -7.912;
B_b = 1.380;
C_b = -3.804;
D_b = -4.501;

// Using equation 6.5
// x_a = 1-(T/Tc_a);
// P_a = Pc_a*exp((A_a*x_a+B_a*x_a^1.5+C_a*x_a^3+D_a*x_a^6)/(1-x_a)); // [bar]

// x_b = 1-(T/Tc_b);
// P_b = Pc_b*exp((A_b*x_b+B_b*x_b^1.5+C_b*x_b^3+D_b*x_b^6)/(1-x_b)); // [bar]

// m_a = P_a/P;
// m_b = P_b/P;

// Solution of simultaneous equation
function[f]=F(e)
    f(1) = e(2) - (e(3)*Pc_a*exp(((A_a*(1-(e(1)/Tc_a))+B_a*(1-(e(1)/Tc_a))^1.5+C_a*(1-(e(1)/Tc_a))^3+D_a*(1-(e(1)/Tc_a))^6))/(1-(1-(e(1)/Tc_a)))))/P;
    f(2) = 1-e(2) - ((1-e(3))*Pc_b*exp((A_b*(1-(e(1)/Tc_b))+B_b*(1-(e(1)/Tc_b))^1.5+C_b*(1-(e(1)/Tc_b))^3+D_b*(1-(e(1)/Tc_b))^6)/(1-(1-(e(1)/Tc_b)))))/P;
    f(3) = (-W/D) - ((e(2)-zf)/(e(3)-zf));
    funcprot(0);
endfunction

// Initial guess
e = [400 0.6 0.4];
y = fsolve(e,F);
T = y(1); // [K] 
Yd = y(2);
Xw = y(3);

printf("The composition of the vapor and liquid and the temperature in the separator if it behaves as an ideal stage are %f, %f and %f K respectively\n\n",Yd,Xw,T);

// For the capculation of the amount of heat to be added per mole of feed
T0 = 298; // [K]
lambdaA = 36.5; // [Latent heats of vaporization at To = 298 K ,kJ/mole]
lambdaB = 41.4; // [Latent heats of vaporization at To = 298 K ,kJ/mole]
CpA = 0.187; // [kJ/mole.K]
CpB = 0.247; // [kJ/mole.K]
CLA1 = 0.218; // [ 298-303 K,  kJ/mole.K]
CLB1 = 0.253; // [ 298-303 K,  kJ/mole.K]
CLA2 = 0.241; // [ 298-386 K,  kJ/mole.K]
CLB2 = 0.268; // [ 298-386 K,  kJ/mole.K]
// Bubble point calculated when 'D' approaches 0 and Dew point calculated when 'D' approaches 1
Tbp = 382.2 // [Bubble point of the mixture, K]
Tdp = 387.9 // [Dew point of mixture, K]

HF = (T1-T0)*(Xw*CLA1+CLB1*(1-Xw)); // [kJ/mole]
HW = (Tbp-T0)*(Xw*CLA2+CLB2*(1-Xw)); // [kJ/mole]
HG = (Tdp-T0)*(Yd*CpA+(1-Yd)*CpB) + Yd*lambdaA +(1-Yd)*lambdaB; // [kJ/mole]

f =1 // [feed]
// Using equation 6.4
deff('[y] = f14(Q)','y = W/D + (HG-(HF+Q/f))/(HW -(HF+Q/f))');
Q = fsolve(40,f14);
printf("The amount of heat to be added per mole of feed is %f kJ/mole\n\n",Q);