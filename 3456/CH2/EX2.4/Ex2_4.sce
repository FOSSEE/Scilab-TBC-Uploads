//Example 2.4
//Elastic Anisotropy
//Page No. 60
clc;clear;close;

S11_Fe=0.8;                //in 1/Pa
S12_Fe=-0.28;                //in 1/Pa
S44_Fe=0.86;                //in 1/Pa
S11_W=0.26;                //in 1/Pa
S12_W=-0.07;                //in 1/Pa
S44_W=0.66;                //in 1/Pa
D_100_l=1;
D_100_m=0;
D_100_n=0;
D_110_l=1/sqrt(2);
D_110_m=1/sqrt(2);
D_110_n=0;
D_111_l=1/sqrt(3);
D_111_m=1/sqrt(3);
D_111_n=1/sqrt(3);

printf('\nFor Iron:\n\n');
Fe_E_111=1/(S11_Fe-2*((S11_Fe-S12_Fe)-S44_Fe/2)*(D_111_l^2*D_111_m^2+D_111_n^2*D_111_m^2+D_111_l^2*D_111_n^2));
Fe_E_100=1/(S11_Fe-2*((S11_Fe-S12_Fe)-S44_Fe/2)*(D_100_l^2*D_100_m^2+D_100_n^2*D_100_m^2+D_100_l^2*D_100_n^2));
printf('E_111 = %g x 10^11 Pa\nE_100 = %g x 10^11 Pa\n',Fe_E_111,Fe_E_100);
printf('\n\n\nFor Tungten:\n\n');
W_E_111=1/(S11_W-2*((S11_W-S12_W)-S44_W/2)*(D_111_l^2*D_111_m^2+D_111_n^2*D_111_m^2+D_111_l^2*D_111_n^2));
W_E_100=1/(S11_W-2*((S11_W-S12_W)-S44_W/2)*(D_100_l^2*D_100_m^2+D_100_n^2*D_100_m^2+D_100_l^2*D_100_n^2));
printf('E_111 = %g x 10^11 Pa\nE_100 = %g x 10^11 Pa\n\nTherefore tungsten is elastically isotropic while iron is elasitcally anisotropic',W_E_111,W_E_100);
