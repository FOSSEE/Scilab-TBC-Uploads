clc;
clear;

printf("\n Example 9.26\n");

//As in Example 9.1, the heat load = 1672 kW
Q=1672;
//With reference to Figure 9.71:
T1=360;
T2=340;
theta1=300;//Temperature of cooling water entering
theta2=316;
X=(theta2-theta1)/(T1-theta1);
Y=(T1-T2)/(theta2-theta1);
//from Figure 9.58
F=0.97;
theta_m=41.9;
//and hence:
A=Q/(2*F*theta_m);//the heat transfer area
printf("\n The heat transfer area is = %.1f m^2",A);