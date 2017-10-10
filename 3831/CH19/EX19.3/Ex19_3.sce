// Example 19_3
clc;funcprot(0);
// Given data
T_H=100;// °C
T_C=0;// °C
alpha_ch=23.0*10^-6;// V/K
alpha_al=-18.0*10^-6;// V/K

// Solution
// (a)
alpha_chal=alpha_ch-alpha_al;// V/K
phi_alch=alpha_chal*(T_H-T_C);// V
// (b)
pi_ch1=alpha_ch*(T_C+273.15);// V
pi_al1=alpha_al*(T_C+273.15);// V
pi_chal1=pi_ch1-pi_al1;// V
pi_ch2=alpha_ch*(T_H+273.15);// V
pi_al2=alpha_al*(T_H+273.15);// V
pi_chal2=pi_ch2-pi_al2;// V
printf('\n(a)alpha_ch-al=%2.0e V/K \n   phi_al-ch=%1.1e V \n(b)At the 0.00°C = 273.15 K junction, \npi_ch=%1.2e V \npi_al=%1.2e V \npi_ch-al=%2.1e V  \nAt the 100.°C = 373.15 K junction,\npi_ch=%1.2e V \npi_al=%1.2e V \npi_ch-al=%2.1e V ',alpha_chal,phi_alch,pi_ch1,pi_al1,pi_chal1,pi_ch2,pi_al2,pi_chal2);
