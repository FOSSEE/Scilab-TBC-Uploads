clc;

printf("Example 3.4\n");

d1=0.3; //diameter of pipe from junction A to D or B to D
l1=1.5e3; //length of pipe from junction A to D or B to D
d2=0.5; // diameter of pipe from junction D to C
l2=0.75e3; // length of pipe from junction D to C
h_A=10; // height of tank A above C
h_B=h_A+6; // height of tank A above C
rho=870; // density of liquid
Meu_l=0.7e-3; // viscosity of liquid

//It may be assumed, as a first approximation, that R/(rho*u^2) is the same in each pipe and that the velocities in pipes AD, BD, and DC are u1,u2 and u3 
//respectively,
//Taking the roughness of mild steel pipe e as 0.00005 m, e/d varies from 
//0.0001 to 0.00017. As a first approximation, R/(rho*u^2) may be taken as 0.002
//Then applying the energy balance equation between D and the liquid level in
//each of the tanks gives
//On forming and solving the equations

x=poly([0],'x');
u2=roots(x^4-(7.38*x^2)+13.57);
u1=(u2^2-1.47)^0.5;
u3=(u1+u2)/2.78;
//taking the positive values and which satisfy equation 7
U1=u1(4);
U2=u2(4);
U3=u3(4);
Q=%pi/4*d2^2*U3;
printf("\n The volumetric flow rate = %.2f m^3/s",Q);