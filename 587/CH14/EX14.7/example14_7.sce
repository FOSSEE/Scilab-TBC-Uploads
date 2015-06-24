clear;
clc;

//Example14.7[Hardening of Steel by the diffusion of carbon]
//Given:-
D_AB=4.8*10^(-10);//Diffusion coefficient of carbon in steel at the furnace temperature [m^2/s]
wA_i=0.0015;//Initial carbon concentration
wA_e=0.012;//Equilibrium concentration of carbon
wA_t=0.01;//Concentration of carbon after desired time
x=0.0005;//Diffusion distance[m]
//Solution:
a=(wA_t-wA_i)/(wA_e-wA_i);
//Tthe argument whose complimentary error function is a=0.81 is 0.17
t=(x^2)/(4*D_AB*(0.17^2));//[seconds]
disp("seconds",round(t),"Time taken to reach desired level of hardening is")