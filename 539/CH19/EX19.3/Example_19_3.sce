//Computation of specific heats for Al and Fe

clear;
clc;

printf("\tExample 19.3\n");

Cp_Al=900;             //In J/kg-K
Cp_Fe=448;             //In j/kg-K

beta_Al=1.77D-11;
beta_Fe=2.65D-12;

T=273;

alphal_Al=23.6D-6;
alphal_Fe=11.8D-6;

alphav_Al=3*alphal_Al;
alphav_Fe=3*alphal_Fe;

den_Al=2.71D3;           //in kg/m^3
den_Fe=7.87D3;           //in kg/m^3

vo_Al=1/den_Al;
vo_Fe=1/den_Fe;

Cv_Al=Cp_Al-(alphav_Al^2*vo_Al*T/beta_Al);
Cv_Fe=Cp_Fe-(alphav_Fe^2*vo_Fe*T/beta_Fe);

printf("\nCv (Al) = %d J/kg-K",Cv_Al);
printf("\nCv (Fe) = %d T/kg-K\n",Cv_Fe);

//End