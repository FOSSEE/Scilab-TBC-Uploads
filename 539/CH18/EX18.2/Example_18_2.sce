//Electrical Conductivity Determination for Intrinsic Silicon at 150°C

clear;
clc;

printf("\t Example 18.2\n");

e=1.6*10^-19;  //Coulomb Charge on electron

ni=4*10^19; //For Si at 423 K   (m^-3)

//Values of m_e and m_h are deduced from graphs at page No.689

m_e=0.06;  //m^2/V-s  Mobility of electron

m_h=0.022;  ////m^2/V-s  Mobility of holes

//sigma is electrical conductivity
sigma=ni*e*(m_e+m_h);

printf("\nElectrical Conductivity is : %f (Ohm-m)^-1\n",sigma);

//End