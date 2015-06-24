clear;
clc;
printf("\t\t\tchapter1_example2\n\n\n");
// determination of thermal conductivity of aluminium
k_ss=14.4; // thermal conductivity of stainless steel in [W/m.K]
printf("\nThe thermal conductivity of stainless steel is %.1f W/m.K",k_ss);
dt_ss=40; // [K]
dt_al=8.65; // [K]
dz_ss=1; // [cm]
dz_al=3; // [cm]
k_al=k_ss*dt_ss*dz_al/(dt_al*dz_ss);// thermal conductivity of Al in [W/m.K]
printf("\nThe thermal conductivity of aluminium is %d W/m.K",k_al);
