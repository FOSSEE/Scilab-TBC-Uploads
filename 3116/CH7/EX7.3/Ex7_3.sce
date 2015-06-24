
clc
// given that
C1=40  // Overall alloy composition
Cb=98
Ca=10
rho_Sn=7.24 //  density in g/cm^3  density of tin
rho_Pb=11.23  // density in g/cm^3  density of lead
Ca_Sn=10
Ca_Pb=90
Cb_Sn=98
Cb_Pb=2
printf("Example 7.3\n")

printf("\n Part A:")

Wa=(Cb-C1)/(Cb-Ca)
Wb=(C1-Ca)/(Cb-Ca)

printf("\n Mass fraction for alpha and beta phases is %.2f and %.2f respectively\n",Wa,Wb);
printf("\n Part B:");

rho_a=100/((Ca_Sn/rho_Sn)+(Ca_Pb/rho_Pb));
rho_b=100/((Cb_Sn/rho_Sn)+(Cb_Pb/rho_Pb));

printf("\n Density of alpha phase is : %.2f g/cm^3",rho_a);
printf("\n Density of beta phase is : %.2f g/cm^3",rho_b);

Va=Wa/(rho_a*((Wa/rho_a)+(Wb/rho_b)));
Vb=Wb/(rho_b*((Wa/rho_a)+(Wb/rho_b)));
printf("\n Volume fraction of alpha phase : %.2f",Va);
printf("\n Volume fraction of beta phase : %.2f",Vb);


