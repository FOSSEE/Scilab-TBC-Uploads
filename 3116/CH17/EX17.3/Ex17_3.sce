
clc
// given that
n=10^23 //  Carrier Concentration in m^-3
e=1.6*10^-19  //Charge on electron in Coulomb  
//From graph 18.18 m_e is calculated corresponding to n=10^23
m_e=0.07  // Mobility of electron in m^2/V-s 
m_e2=0.04  //  Mobility of electron m^2/V-s
printf(" Example 17.3\n")
printf("\n Part A:\n ")
printf("\n Material is n-type \n ")
printf("\n Part B\n ")
sigma=n*e*m_e // electrical conductivity calculation for extrinsic n-type
printf("\n Conductivity is just %d (Ohm-m)^-1\n",sigma)
printf("\n Part C\n");
//From graph 18.19a m_e2 is calculated corresponding to 373 K
sigma2=n*e*m_e2
printf("\n Conductivity at T=373 K becomes %d (Ohm-m)^-1\n",sigma2);

