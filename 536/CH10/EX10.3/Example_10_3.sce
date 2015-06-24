clear;
clc;

printf("Example 10.3\n");

P=101.3e3; //pressure of the operating column
T=295; //Temperature of the operating column
P_A=7e3; //partial pressure of ammonia
x=1e-3; //=(y1-y2)Thickness of stationary gas film
D=2.36e-5; //Diffusivity of ammonia

C_A=(1/22.4)*(273/T)*(P_A/P);//=(C_A1-C_A2)Concentration of ammonia gas
//X=C_T/C_BM
X=P*log(P/(P-P_A))/(P-(P-P_A));
//From equation 10.33
N_A_=(D/x)*X*(C_A);
printf("\n The transfer rate per unit area = %.2f *10^-5 kmol/m^2*s",N_A_*1e5)