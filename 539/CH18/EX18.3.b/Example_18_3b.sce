//Room-Temperature for Extrinsic Silicon

clear;
clc;

printf("\tExample 18.3\n");
printf("\n\tPart B\n ");

n=10^23; //m^-3  Carrier Concentration

e=1.6*10^-19;  //Coulomb  Charge on electron

//From graph 18.18 m_e is calculated corresponding to n=10^23

m_e=0.07;  //m^2/V-s  Mobility of electron

//For extrinsic n-type, the formula used is:

sigma=n*e*m_e;

printf("\nConductivity at n=10^23 is : %d (Ohm-m)^-1\n",sigma);


//End