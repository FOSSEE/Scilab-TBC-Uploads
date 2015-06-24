
clc
// Given that
e=1.6*10^-19  //Charge on electron in Coulomb 
ni=4*10^19 //  number of electron per unit volume for Si at 423 K   (m^-3)
//Values of m_e and m_h are deduced from graphs at page No.689
m_e=0.06  //Mobility of electron in m^2/V-s  
m_h=0.022  //  Mobility of holes in m^2/V-s
printf(" Example 17.2\n")
sigma=ni*e*(m_e+m_h) // electrical conductivity

printf("\n Electrical Conductivity is %.2f (Ohm-m)^-1\n",sigma)

