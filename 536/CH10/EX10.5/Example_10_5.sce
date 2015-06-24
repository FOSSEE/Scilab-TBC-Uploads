clear;
clc;

printf("Example 10.5\n");

N_dot=50; //Initial maas transfer rate
D=1.8e-9; //Diffusivity of gas in liquid phase

C_bg=(1/22.4)*(273/293); //bulk gas concentration
N_C=N_dot*C_bg; //Initial maas transfer rate in terms of cocentration
h=N_C/0.04;// Effective Mass transfer coefficient
R=1/h;//Equivalent resistance
printf("\n Equivalent resistance = %.4f s/m",R);
R_l=R*9; //Liquid phase resistance
h_l=1/R_l; //Liquid phase coefficient

//From equation 10.113 and using liquid phase resistance
t=R_l^2/(%pi/D);

printf("\n The required time is = %.2f *10^-11s",t*1e11)