//Computation of the Room-Temperature Intrinsic Carrier Concentration for Gallium Arsenide

clear;
clc;

printf("\t Example 18.1\n");

sigma=10^-6;  // (Ohm-m)^-1  Electrical Conductivity

e=1.6*10^-19;  //Coulomb Charge on electron

m_e=0.85; //m^2/V-s  Mobility of electron

m_h=0.04; //m^2/V-s  Mobility of holes

//ni is Intrinsic carrier concentration
ni=sigma/(e*(m_e+m_h));

printf("\n Intrinsic Carrier Concentration is: %f m^-3\n",ni);

//End