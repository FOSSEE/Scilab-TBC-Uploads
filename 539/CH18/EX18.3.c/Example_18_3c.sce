//Elevated-Temperature Electrical Conductivity Calculations for Extrinsic Silicon

clear;
clc;

printf("\tExample 18.3\n");

n=10^23; //m^-3  Carrier Concentration

e=1.6*10^-19;  //Coulomb  Charge on electron

printf("\n\tPart C\n");

//From graph 18.19a m_e2 is calculated corresponding to 373 K

m_e2=0.04;  //m^2/V-s  Mobility of electron

sigma2=n*e*m_e2;

printf("\nConductivity at T=373 K becomes : %d (Ohm-m)^-1\n",sigma2);

//End