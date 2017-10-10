// SAMPLE PROBLEM 3/8
clc;clear;funcprot(0);
// Given data
m=1500;// The mass of the car in kg
v_A=100;// The velocity in km/h
v_C=50;// The velocity in km/h
rho_A=400;// The radius of curvature in m
rho_C=80;// The radius of curvature in m
delta_s=200;// m

// Calculation
a_t=abs((((v_C/3.6)^2)-((v_A/3.6)^2))/(2*delta_s));// The tangential acceleration in m/s^2
a_na=((v_A/3.6)^2)/rho_A;// The normal components of acceleration at A in m/s^2
a_nb=0;// The normal components of acceleration at B in m/s^2
a_nc=((v_C/3.6)^2)/rho_C;// The normal components of acceleration at C in m/s^2
F_t=m*a_t;// N
F_na=m*a_na;// N
F_nb=m*a_nb;// N
F_nc=m*a_nc;// N
F_a=sqrt(F_na^2+F_t^2);// The total horizontal force acting on the tires at A in N
F_b=sqrt(F_nb^2+F_t^2);// The total horizontal force acting on the tires at B in N
F_c=sqrt(F_nc^2+F_t^2);// The total horizontal force acting on the tires at C in N
printf("\nAt A,F=%4.0f N \nAt B,F=%4.0f N \nAt C,F=%4.0f N",F_a,F_b,F_c);

