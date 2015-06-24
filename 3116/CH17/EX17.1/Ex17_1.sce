
clc
// Given that
sigma=10^-6  // ( Electrical Conductivity in Ohm-m)^-1 
e=1.6*10^-19  // Charge on electron in Coulomb 
m_e=0.85 //Mobility of electron in m^2/V-s  
m_h=0.04 // Mobility of holes in m^2/V-s 
 
printf(" Example 17.1\n")
n_i=sigma/(e*(m_e+m_h))//n_i is Intrinsic carrier concentration

printf("\n Intrinsic Carrier Concentration is %.1e m^-3\n",n_i);
