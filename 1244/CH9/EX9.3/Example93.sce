
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 9, Example 3")
//Area of the flat black surface in m^2
A_1=10e-4;
//Radiation emitted by the flat black surface in W/m^ sr
I_1=1000;
// Another surface having same area as A1 is placed relative to A1 such that length of radiation ray connecting dA_1 and dA_2 in meters
r=0.5;
//Area in m^2
A_2=10e-4;
// Since both areas are quite small, they can be approximated as differential surface areas and the solid angle can be calculated as
//d_omega21=dA_n2/r^2 where dA_n2 is the projection of A2 in the direction normal to the incident radiation for dA_1,thus

//Angle between the normal n_2 ant the radiation ray connecting dA_1 and dA_2
theta_2=30;

//Therefore solid angle in sr
d_omega21=(A_2*cosd(theta_2)/(r^2));

disp("Irradiation of A_2 by A_1 in watt")
//Irradiation in W
q_r12= I_1*A_1*cosd(90-theta_2)*d_omega21
