//Example 4.15
clear;
clc;

//Given
Cpw=75.42;//heat capacity of water in J K^-1 mol^-1
T=263; //temperature in K
P=1;//pressure in atm
Cpi=37.20;//heat capacity of ice  in J K^-1 mol^-1
delHf=6008;// latent heat of fusion in J mol^-1
mp=273;//melting point of water in K
n=1;//moles of ice taken

//To calculate the entropy change
delS1=Cpw*log(mp/T);//entropy change during 1st step in J K^-1
delS2=-delHf/mp;//entropy change during 2nd step in J K^-1
delS3=Cpi*log(T/mp);//entropy change during final step in J K^-1
delS=delS1+delS2+delS3;//total entropy change in J K^-1
mprintf('Entropy change = %f J K^-1 mol^-1',delS);
delH1=Cpw*(mp-T);//enthalpy change during 1st step in J
delH2=-delHf;//enthalpy change during 2nd step in J
delH3=Cpi*(T-mp);//entropy change during final step in J
delHsys=delH1+delH2+delH3;//total enthalpy change in J
delSsurr=-delHsys/T;//entropy change of surrounding in J K^-1
delSuni=delS+delSsurr;//entropy of universe in J K^-1
mprintf('\n Enthalpy change of the system = %f J mol^-1',delHsys);
mprintf('\n Enthalpy change of the surrounding = %f J',-delHsys);
mprintf('\n Entropy change of the surrounding = %f J K^-1',delSsurr);
mprintf('\n Entropy change of the universe = %f J K^-1',delSuni);
//end