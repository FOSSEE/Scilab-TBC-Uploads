//EX4_2 Pg-4.14
clc
printf("When beta_dc=50 ")
beta_dc=50;
alpha_dc=beta_dc/(1+beta_dc);
printf("\n alpha_dc=%.4f \n\n",alpha_dc)
printf(" When beta_dc=190 ")
beta_dc=190;
alpha_dc=beta_dc/(1+beta_dc);
printf("\n alpha_dc=%.4f \n\n",alpha_dc)
printf(" When alpha_dc=0.995 ")
alpha_dc=0.995;
beta_dc=alpha_dc/(1-alpha_dc);
printf("\n beta_dc=%.0f \n\n",beta_dc)
printf(" When alpha_dc=0.9765 ")
alpha_dc=0.9765;
beta_dc=alpha_dc/(1-alpha_dc);
printf("\n beta_dc=%.2f \n",beta_dc)


