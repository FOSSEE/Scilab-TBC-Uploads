clc;
clear;

printf("\n Example 10.1\n");

x=1e-3; //Thickness of stagnant air film
D=1.8e-5;//Difffusivity of ammonia
R=8314; //Gas constant
T=295; //Temperature 
P=101.3e3; //Total Pressure

//If the subscripts 1 and 2 refer to the two sides of the stagnant layer and 
//the subscripts A and B refer to ammonia and air respectively,
P_A1=.50*P;
P_A2=0;
P_B1=P-P_A1;
P_B2=P-P_A2;
P_BM=(P-P_A1)/log(P/P_A1);
//Thus, substituting in equation 10.31 gives:
N_A=(-D/(R*T*x))*(P/P_BM)*(P_A2-P_A1);
printf("\n The rate of diffusion of ammonia through the layer = %.2f *10^-4 kmol/m^2*s",N_A*1e4);

