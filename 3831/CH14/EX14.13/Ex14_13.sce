// Example 14_13
clc;funcprot(0);
// Given data
mu_j=0.0300;// °F/psi
p_1=300;// psia
p_2=14.7;// psia
T_1=70.0;// °F
n_s_c=90.0/100;// The isentropic efficiency of the air compressor
k=1.40;// The specific heat ratio

// Calculation
dT=mu_j*(p_2-p_1);// °F
T_2=T_1+dT;// °F
COP_RAC=(mu_j*(p_2-p_1))/(((T_1+459.67)*[((p_2/p_1)^((k-1)/k))-1])/n_s_c);// The coefficient of performance
printf("\nThe outlet temperature,T_2=%2.1f°F \nCOP of a Joule-Thomson expansion throttling device,COP=%0.4f",T_2,COP_RAC);
