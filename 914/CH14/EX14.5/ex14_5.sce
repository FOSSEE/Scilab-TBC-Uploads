clc;
warning("off");
printf("\n\n example14.5 - pg730");
// given
T=323;  //[K] - temperature
P=1;  //[atm] - pressure
Dab_experimental=7.7*10^-6;  //[m^2/sec]
DPM_A=1.9;  // dipole moment of methyl chloride
DPM_B=1.6;  // dipole moment of sulphur dioxide
Vb_A=5.06*10^-2;  // liquid molar volume of methyl chloride
Vb_B=4.38*10^-2
Tb_A=249;  // normal boiling point of methyl chloride
Tb_B=263;  // normal boiling point of sulphur dioxide
del_A=((1.94)*(DPM_A)^2)/(Vb_A*Tb_A);
del_B=((1.94)*(DPM_B)^2)/(Vb_B*Tb_B);
del_AB=(del_A*del_B)^(1/2);
sigma_A=(1.166*10^-9)*(((Vb_A)/(1+1.3*(del_A)^2))^(1/3));
sigma_B=(1.166*10^-9)*(((Vb_B)/(1+1.3*(del_B)^2))^(1/3));
etaabykb=(1.18)*(1+1.3*(del_A^2))*(Tb_A);
etabbykb=(1.18)*(1+1.3*(del_B^2))*(Tb_B);
sigma_AB=(1/2)*(sigma_A+sigma_B);
etaabbykb=(etaabykb*etabbykb)^(1/2);
Tstar=T/(etaabbykb);
sigmaDnonpolar=1.602;
sigmaDpolar=sigmaDnonpolar+(0.19*(del_AB^2))/Tstar;
patm=1;
Ma=50.488;  //[kg/mole] - molecular weight of methyl chloride
Mb=64.063;  //[kg/mole] - molecular weight of sulphur dioxide 
D_AB=(1.8583*(10^-(27))*(((T^3)*((1/Ma)+(1/Mb)))^(1/2)))/(patm*(sigma_AB^(2))*sigmaDpolar);
printf("\n\n Dab=%em^2/sec",D_AB);
printf("\n\n The Chapman Enskog prediction is about 8 percent higher");

