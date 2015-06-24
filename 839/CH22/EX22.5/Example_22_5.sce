//clear//
clear;
clc;

//Example 22.5
//Solution
//Equlibrium data are shown in Fig.22.22
//By a heat balance similar to that of Eample 22.3
//The temperature rise of the liqui was estimated
//to be
delta_T = 12.5; //[C]
//Basis:
dry_gas_in = 100; //[mol]
sol_in = 140; //[mol]
N2_in = 87; //[mol]
CO2_in = 10; //[mol]
EO_in = 3; //[mol]
N2_out = 87; //[mol]
CO2_out = 10; //[mol]
EO_out = 3*0.02; //[mol]
IN = N2_in+CO2_in+EO_in; //[mol]
OUT = N2_out+CO2_out+EO_out; //[mol]
//Assuming negligible CO2 absorption and neglect effect of H2O on
//gas composition.
//At top:
xt = 0.004;
yt = EO_out/OUT;
//Moles of EO absorbed
EO_abs = 3*0.98; //[mol]
//Moles of EO absorbed in water
EO_H2O = 140*0.0004; //[mol]
//At bottom:
xb = (EO_abs+EO_H2O)/(140+EO_abs);
yb = 0.03;
//From Fig 22.22
y = [0.03,0.015,0.005,0.0006]';
delta_y1 = [0.008,0.0006,0.0024,0.0003]';

for i = 1:length(y)-1
  delta_y = y(i)-y(i+1);
  delta_yL = (delta_y1(i)-delta_y1(i+1))/log(delta_y1(i)/delta_y1(i+1));
  Noy1(i) = delta_y/delta_yL;
end
Noy = sum(Noy1);

//Column diameter:
//Using generalize pressure-drop correlation, Fig.22.6
//Based on the inlet gas,
Mbar = 0.87*28+0.1*44+0.03*44;
//At 40C,
rho_y = 30.1/359*20*273/313 //[lb/ft^3]
rho_x = 62.2; //[lb/ft^3]
//Let A = Gx/Gy*sqrt(rho_y/(rho_x-rho_y))
A = 1.4*18/(1*30.1)*sqrt(rho_y/(rho_x-rho_y));
//From Fig. 22.6, for
delta_P = 0.5; //[in.H2O/ft]
//Let B = Gy^2*Fp*mux^0.1/(rho_y*(rho_x-rho_y)*gc)
B = 0.045;
//From Table 22.1,
Fp = 40;
mu = 0.656; //[cP]
//so 
Gy = sqrt(B*(rho_y)*(rho_x-rho_y)*32.2/(Fp*mu^0.1)); //[lb/ft^2-h]
//or 
Gy = Gy*3600; //[lb/ft^2-s]
Gx = 1.4*18/(1*Mbar)*Gy; //[lb/f^2-s]
//For a feed rate 
F = 10000*Mbar; //[lb/h]
S = F/Gx; //[ft^2]
D = sqrt(S*4/%pi); //[ft]
//Column heigth:
//From Fig. 22.20 at Gy = 500 and Gx = 1500
Hy_NH3 = 1.4; //[ft]
mu_40 =0.0181*10^-2; //[P], Appendix 8
Dv = 7.01*10^-3; //[cm^2/s], from Eq.(21.25)
rho = 2.34*10^-2; //[lb/ft^3]
Nsc = mu_40/(rho*Dv);
//Form Table 22.1,
fp = 1.36;
Hy_EO = 1.4*(1.1/0.66)^0.5*1/1.36*(Gy/500)^0.3*(1500/Gx)^0.4; //[ft]
//Form Fig. 22.19,
Hx_O2 = 0.9; //[ft]
Gx1 = 1500;
mu1 = 0.00656; //[P]
rho1 = 1; //[lb/ft^3]
//Using Eq.(21.28)
Dv1 = 2.15*10^-5; //[cm^2/s]
Nsc1 = mu1/(rho1*Dv1);
//Using Eq.(22.35), with the correction factor fp and Nsc = 381, 
//for O2 in water at 25 C
Hx_EO = Hx_O2*(Gx/(mu1*100)/(Gx1/0.894))^0.3*(Nsc1/381)^0.5/1.36; //[ft]
//From Fig 22.22, the average value of m
m = 1.0;
//From Eq.(22.30)
HOy = 1.71+(1*0.96)/1.4; //[ft] 

disp(NOy,'number of transfer units required')
disp('ft',D,'diameter of the column')
disp('ft',HOy,'packing height')
