//clear//
//Caption:Program to Find Attenuation in dB/km
//Example3.1
//page 91
clear;
clc;
z = [1 2]; //diatances are in kilometer
alpha_in_dB_per_km = 3;
r = (alpha_in_dB_per_km*z)/10;
P0_Pz = (10^r);
for i = 1:length(P0_Pz)
  Pz_P0(i) = 1-(1/P0_Pz(i)) ;
end
disp(Pz_P0*100,'Optical signal power decreased by in percentage')
//RESULT
//Optical signal power decreased by in percentage   
//    49.881277  
//    74.881136   
