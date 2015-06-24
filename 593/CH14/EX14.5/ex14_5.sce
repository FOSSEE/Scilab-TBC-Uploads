clear;
//clc();

// Example 14.5
// Page: 384
printf("Example-14.5  Page no.-384\n\n");

//***Data***//

// We have two phase system in this problem in which phase 1 is seawater and phase 2 is fresshwater 
// Seawater contains mostly NaCl, Na2SO4, MgCl2, KCl and if they completly ionised then
x_water_1 = 0.98;// mole fraction of water in phase 1 i.e. in seawater
x_water_2 = 1;// mole fraction of water in the phase 2 i.e. in water 
R = 10.73;//[(psi*ft^(3))/(lbmol*R)] Universal gas constant
T = 500;//[R] temperature
v_water_1 = 18/62.4//[ft^(3)/(lbmol)]

// The effect of the pressure on the fugacity of the liquid is given as
// f_i = (x_i*Y_i*p)*exp(integrate(v/(R*T)dP)) with integration limit from pure liquid pressure to solution liquid pressure 

// Writing this equation twice, oncce for pure water and once for the water in the ocean water, and equating the fugacities, we get 
// ((x_i*Y_i*p)*exp(integrate(v/(R*T)dP)))_pure_water = ((x_i*Y_i*p)*exp(integrate(v/(R*T)dP)))_seawater

// For pure water, x_i and Y_i are unity, and for the water in the solution, with mole fraction 0.98, Raoult's law is certain to be practically obeyed
// So that Y_i is certain to be practically unity.

// The partial molal volume of water in pure water is practically the same as that in dilute solutions,
// Tkaing the logarithm of both sides and solving , we get 

// -log(x_water_1) = integrate(v_water_1/(R*T)dP)
// Integrating with the limit P_purewater and P_seawater we have
// -log(x_water_1) = (v_water_1/(R*T))*( P_seawater - P_purewater )
// ( P_seawater - P_purewater ) = delta_P
// So 
delta_P = (-(R*T)*log(x_water_1))/v_water_1;//[psi]
printf("The pressure difference between the two phases is %0.1f psi",delta_P)
