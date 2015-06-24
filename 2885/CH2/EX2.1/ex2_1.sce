//Calculate the conductivity and resistivity of germanium
clear;
clc;
//soltion
//given
q=1.6*10^-19;//Coulomb        //charge of an electron
ni=2.5*10^19;//per m^3        //concentration
un=0.36;//m^2/Vs              //mobility of electron
up=0.17;//m^2/Vs             //mobility of holes
con=q*ni*(un+up);           //conductivity
res=(1/con);                //resistivity
printf("The conductivty is %.2f S/m \n",con);
printf("The resistivity is %.2f Ωm",res);
