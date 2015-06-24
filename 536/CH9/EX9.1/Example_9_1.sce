clc;
clear;

printf("\n Example 9.1\n");

M_dot1=20; //rate of mass to be cooled
M_dot2=25; //rate of cooling water
Cp=4.18e3; //Heat capacity
T1=360; //Initial temp.
T2=340; //Final temp.
theta_1=300; //Temperature of cooing water entering
U=2e3; //Overall heat transfer coefficient

Q=M_dot1*Cp*(T1-T2); //Heat load
printf("\n Heat load = %.0f kW",Q*1e-3);
//The cooling water outlet temperature is given by
x=poly([0],'x');
theta_2=roots(Q-(M_dot2*Cp*(x-300)));
printf("\n The cooling water outlet temperature is = %.0f K",theta_2);
printf("\n (a) Counter flow")
//In equation 9.9:
theta_m1=((T1-theta_2)-(T2-theta_1))/(log((T1-theta_2)/(T2-theta_1)));
A1=Q/(U*theta_m1)
printf("\n The surface area required %.2f m^2",A1);
printf("\n (b) Co-current flow")
//In equation 9.9:
theta_m2=((T1-theta_1)-(T2-theta_2))/(log((T1-theta_1)/(T2-theta_2)));
A2=Q/(U*theta_m2)
printf("\n The surface area required %.2f m^2",A2);
