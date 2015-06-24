clc;
warning("off");
printf("\n\n example14.9 - pg743");
// given
T=288;  //[K] - temperature
M1=60.09;  //[kg/mole] - molecular weight of proponal
M2=18.015;  //[kg/mole] - molecular weight of water
mu1=2.6*10^-3;  //[kg/m*sec] - viscosity of proponal
mu2=1.14*10^-3;  //[kg/m*sec] - viscosity of water
Vc=14.8*10^-3;  //[m^3/kmol] - molar volume of carbon
Vh=3.7*10^-3;  //[m^3/kmol] - mlar volume of hydrogen
Vo=7.4*10^-3;  //[m^3/kmol] - molar volume of  oxygen
Vp=3*Vc+8*Vh+Vo;  // molar volume of proponal
phi=2.26;  // association factor for diffusion of proponal through water
Dab=(1.17*10^-16*(T)*(phi*M2)^(1/2))/(mu2*(Vp^0.6));
printf("\n\n The diffusion coefficient of proponal through water is \n Dab=%e m^2/sec",Dab);
phi=1.5;  // association factor for diffusion of water through proponal
Vw=2*Vh+Vo;  //[molar volume of water
Dab=(1.17*10^-16*(T)*(phi*M1)^(1/2))/(mu1*(Vw^0.6));
printf("\n\n The diffusion coefficient of water through propanol is \n Dab=%e m^2/sec",Dab);
