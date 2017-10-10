//Example 5.9
clear;
clc;

//Given
Cpl=75.4;//heat capacity of water in J K^-1 mol^-1
Cpv=33.2;//heat capacity of water vapour in J K^-1 mol^-1
R=8.314;//gas constant in J K^-1 mol^-1
T=300//temperature in K
delHv=40850;//latent heat of vapourization in J mol^-1
Tb=373;//boiling point of water in K
P1=101325;//initial pressure in Pa
P2=10132.5;//final pressure in Pa

//To determine the free energy change delG
delH1=Cpl*(Tb-T);//enthalpy change during 1st step in J
delS1=Cpl*log(Tb/T);//entropy change during 1st step in J K^-1
delH2=delHv;//enthalpy change during 2nd step in J
delS2=delHv/Tb;//entropy change during 2nd step in J K^-1
delH3=Cpv*(T-Tb);//enthalpy change during 3rd step in J
delS3=Cpv*log(T/Tb);//entropy change during 3rd step in J K^-1
delH4=0;//enthalpy change during final step in J
delS4=R*log(P1/P2);//entropy change during final step in J K^-1
delH=delH1+delH2+delH3+delH4;//total enthalpy in J
delS=delS1+delS2+delS3+delS4;//total entropy change in J
delG=delH-(T*delS);//gibbs free energy change in J
mprintf('Free energy change = %f J mol^-1',delG);
//end