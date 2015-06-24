//EX4_3,Pg-4.15
clc
Ib=20e-6;
Ie=0.0064;
beta_dc=Ie/Ib-1;
alpha_dc=beta_dc/(1+beta_dc);
printf("\n beta_dc=%.0f \n \n alpha_dc=%f \n",beta_dc,alpha_dc)
Ic=beta_dc*Ib;//collector current
printf("\n collector current is %.3f mA \n",Ic*1e3)
