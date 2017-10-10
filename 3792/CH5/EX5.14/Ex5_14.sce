// SAMPLE PROBLEM 5/14
clc;clear;funcprot(0);
// Given data
omega_CB=2;// rad/s
r_A=100;// mm
r_B=75;// mm
OCbar=250;// mm

// Calculation
omega_AB=-6/7;// rad/s
omega_OA=-3/7;// rad/s
// The acceleration equation is a_A=a_B+(a_A/B)_n+(a_A/B)_t;
// a_A=(alpha_OA*r_A)+(omega_OA*(omega_OA*r_A))
// a_A=(-100*alpha_OA)i-((100)*(3/7)^2)j mm/s^2
// a_B=(alpha_CB*r_B)+(omega_CB*(omega_CB*r_B)) mm/s^2
// a_B=300i mm/s^2
// (a_A/B)n=omega_AB*(omega_AB*r_AB)
// (a_A/B)n=(6/7)^2*(175i-50j) mm/s^2
// (a_A/B)t= alpha_AB*r_A/B
// (a_A/B)t=(-50*alpha_AB)i-(175*alpha_AB)j mm/s^2
// Equate separately the coefficients of the i-terms and the coefficients of the j-terms to give
function[X]=acceleration(y)
    X(1)=(-100*y(1))-(429-(50*y(2)));
    X(2)=(-18.37)-(-36.7-(175*y(2)));
endfunction
y=[0.1 1];
z=fsolve(y,acceleration);
alpha_AB=z(2);// mm/s^2
alpha_OA=z(1);// mm/s^2
printf("\nThe angular acceleration of link AB,alpha_AB=%0.4f rad/s^2 \nThe angular acceleration of link OA,alpha_OA=%1.2f rad/s^2",alpha_AB,alpha_OA);
