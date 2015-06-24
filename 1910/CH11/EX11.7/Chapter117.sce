// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 11, Example 7")
//Two parallel infinite surafces are maintained at tempratures T2=200°C or 473.15K and T1=300°C or 573.15K
T1=573.15;
T2=473.15;
//The emissivity(emi) is 0.7 for both the surfaces which are gray.
emi1=0.7;
emi2=0.7;
//stefan=boltzman constant(sigma)=5.67*10^-8W/(m^2*K^4)
sigma=5.67*10^-8;
//The net rate of heat transfer per unit area is given Q/A=(sigma*(T1^4-T2^4))/[(1/Ɛ1)+(1/Ɛ2)-1]
//Let Q/A=H
disp("The net rate of heat transfer per unit area is given Q/A=(sigma*(T1^4-T2^4))/[(1/Ɛ1)+(1/Ɛ2)-1] in W")
H=(sigma*(T1^4-T2^4))/[(1/emi1)+(1/emi2)-1]
//When the two surfaces are black
//This implies emiisivity(emi)=1 for both surfaces
//So,The net rate of heat transfer when the two surfaces are black is Q/A=sigma*(T1^4-T2^4)
disp("The net rate of heat transfer when the two surfaces are black is Q/A=sigma*(T1^4-T2^4) in W")
H=sigma*(T1^4-T2^4)










