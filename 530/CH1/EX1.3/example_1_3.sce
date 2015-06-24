clear;
clc;
// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 1
// Introduction


//Example 1.3
// Page 16
printf("Example 1.3, Page 16\n\n");

//Solution:
// Given
v_i=10; // [m/s]
q=1000; // [W]
d_i=0.04; // [m]
d_o=0.06; // [m]

// From appendix table A.2
rho1=0.946; // [kg/m^3] at 100 degree C
C_p=1009; // [J/kg K]

mdot=rho1*(%pi/4)*(d_i^2)*v_i; // [kg/s]


// In this case (dW/dt)_shaft=0 and (z_o - z_i)=0
// From eqn 1.4.15 , q=mdot*(h_o-h_i)
// Let dh = (h_o-h_i)
dh=q/mdot; // [J/kg]
// Let T_o be the outlet temperature
T_o=dh/C_p+100;

rho2=0.773; // [kg/m^3] at T_o = 183.4 degree C
// From eqn 1.4.6
v_o=mdot/(rho2*(%pi/4)*(d_o)^2); // [m/s]

dKE_kg=(v_o^2-v_i^2)/2; // [J/kg]


printf("Exit Temperature is %f degree C \n",T_o);
printf("Exit velocity is %f m/s \n",v_o);
printf("Change in Kinetic Energy per kg = %f J/kg",dKE_kg);