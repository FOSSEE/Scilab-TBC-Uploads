// Scilab code Exa15.8 : : Page-655 (2011)
clc; clear;
sigma_a_u = 698;        // Absorption cross section for uranium, barns
sigma_a_M = 0.00092;        // Absorption cross section for heavy water, barns
N_m = 10^5;        // Number of atoms of heavy water
N_u = 1;        // Number of atoms of uranium
f = sigma_a_u/(sigma_a_u+sigma_a_M*N_m/N_u);   // Thermal utilization factor
eta = 2.08;        // Number of fast fission neutron produced
k_inf = eta*f;        // Multiplication factor
L_m_sqr = 1.70;        // Material length, metre
L_sqr = L_m_sqr*(1-f);    // Diffusion length, metre
B_sqr = 1.819/0.30381*exp(-1/12)-1/0.3038;    // Geometrical buckling, per square metre
V_c = 120/(B_sqr*sqrt(B_sqr));        // Volume of the reactor, cubic metre
printf("\nThe critical volume of the reactor = %4.1f cubic metre", V_c);

// Result
// The critical volume of the reactor = 36.4 cubic metre 