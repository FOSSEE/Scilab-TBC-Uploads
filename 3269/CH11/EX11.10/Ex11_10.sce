// Example 11.10
clear all;
clc;

// Given data
P = 1000;                                       // Electrical power of the plant in Mwe
eta = 0.38;                                     // Plant efficiency
P_th = P/eta;                                   // Thermal power of the plant in MW
h = 100;                                        // Height of stack in metre
t = 24*365;                                     // The number of hours in a year
m0 = 13000;                                     // Amount of coal in the plant in Btu/lb
m0_ash = 0.09;                                  // Fraction of ash in the coal

// 1.
E = P_th*t;                                     // Energy released in a year in MW-hour
// Converting the units in Btu by using 1 MW-hour = 3.412*10^6 Btu
m = (E*3.412*10^6)/m0;
// Converting the units in g/year by using 1 lb/year = 453.59237 g/year
m = m*453.59237;
// Assuming the fly ash equipment has an efficiency of 97.5% of fly ash removal
eta_flyash = 0.025;                             // Only (1-efficiency) is exhausted
m_ash = eta_flyash*m0_ash*m;
// A typical power plant contains 3pCi/g of each nuclide (Radium-226) in one year
A = 3*10^(-12);
// Calculation
A_total = A*m_ash;
// Result
printf(" \n Total activity of Radium-226 emitted = %.4f curie \n",A_total)

// 2.
v_bar = 1;                                      // Wind speed in m/sec
t = 24*365*3600;                                // Analysis time of one year equivalently in seconds
MPC = 3*10^(-12);                               // Maximum Permissible Concentration in micro-curie/cm^3
Q_bar = A_total/t;                              // Emission rate for one year in curie/year
// Let the quantity chi*v_bar/Q_bar = x
// Using the plot for Pasquill F, given in Fig. A.7, Pg no 413 from Slade, D. H., Editor, Meteorology and Atomic Energy-1968. U. S. Atomic Energy Commission Report TID-24190, 1968.
x = 2.5*10^(-6);                                // Maximum value of x at 10^4 m 
// Solving for chi
chi = (x*Q_bar)/v_bar;
// Converting the units from Ci/m^3 to micro-curie/cm^3 by multiplying by 10^6/10^6  = 1
printf(" \n Concentration of Radium-226 present = %.2E micro-curie/cm^3 \n",chi)
// Let c be the comparison factor
// Calculation
c = MPC/chi;
// Result
printf(" \n On comparison, the total concentration of Radium-226 is %d times smaller than Maximum Permissible Concentration (MPC) \n",c)
// The comparison factor is slightly different from the value in the textbook. This is because of approximation used in the textbook.
