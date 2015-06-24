// Scilab Code Ex9.8: Page:286 (2006)
clc; clear;
M = [199.5 200.7 202.0 203.3];  // Isotopic mass of Hg, amu
T_c = [4.185 4.173 4.159 4.146];    // Critical temperature of Hg, kelvin
alpha = 0.5;    // Trial value of Isotopic exponent
// Accroding to isotopic effect, T_c = K*M^(-alpha), solving for K
K = T_c(1)/M(1)^(-alpha);  // Isoptopic coefficent 
Tc = zeros(3);  
for i = 2:1:4
    Tc(i-1) = K*M(i)^(-alpha);
    printf("\nTc(%d) = %5.3f", i, Tc(i-1));
end
if T_c(2)-Tc(1)<0.001 & T_c(3)-Tc(2)<0.001 & T_c(4)-Tc(3)<0.001 then
    printf("\nThe isotopic exponent in Isotopic effect of Hg = %3.1f", alpha);
end

// Result 
// Tc(2) = 4.172
// Tc(3) = 4.159
// Tc(4) = 4.146
// The isotopic exponent in Isotopic effect of Hg = 0.5 
