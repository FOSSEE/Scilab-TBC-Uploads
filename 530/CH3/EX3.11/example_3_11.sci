clear all;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.11
// Page 141
printf("Example 3.11, Page 141 \n\n")

// All modes of heat transfer are involved
// let steady state heat flux flowing through the composite slab be (q/a)
h1 = 20;     //[W/m^2 K]
w1 = 0.2;    //[m]
k1 = 1;      //[W/m K]
e1 = 0.5;    //emmisivity at surfce 1
e2 = 0.4;    //emmisivity at surfce 2
w2 = 0.3;    //[m]
k2 = 0.5;    //[W/m K]
h2 = 10;     //[W/m^2 K]
T1 = 473;    //[Kelvin]
T2 = 273+40; //[Kelvin]
stefan_cnst = 5.67e-08;   //[W/m^2 K^4]

// For resistances 1 and 2
function[f]=temperature(T)
    f(1) = (T1-T(1))/(1/h1 + w1/k1) - (T(2) - T2)/(w2/k2 + 1/h2);
    f(2) = stefan_cnst*(T(1)^4 - T(2)^4)/(1/e1 + 1/e2 -1) - (T(2) - T2)/(w2/k2 + 1/h2);
    funcprot(0);
endfunction

T = [10 10]; // assumed initial values for fsolve function
y = fsolve(T,temperature);

printf("\n Steady state heat flux q/A = %.1f W/m^2",(T1-y(1))/(1/h1 + w1/k1));




