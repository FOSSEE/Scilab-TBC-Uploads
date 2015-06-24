clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 6
// Heat Transfer by Natural Convection


// Example 6.1
// Page 258
printf("Example 6.1, Page 258 \n \n");

H = 0.5 ; // [m]
T_h = 100; // [degree C]
T_l = 40; // [degree C]

v = 20.02*10^-6 ; // [m/s]
Pr = 0.694; 
k = 0.0297; // [W/m K]

T = (T_h+T_l)/2 + 273 ; // [K]
printf("Mean film temperature = %f K \n",T);
B = 1/T;

Gr = 9.81*B*((T_h-T_l)*H^3)/(v^2);
Ra = Gr*Pr;

// (a)
// Exact analysis - Equation 6.2.17
disp("(a)");
printf("Exact analysis\n");
Nu_a = 0.64*(Gr^(1/4))*(Pr^0.5)*((0.861+Pr)^(-1/4));
printf("Nu_L = %f \n",Nu_a);

// (b)
// Integral method - Equation 6.2.29
disp("(b)");
printf("Integral method \n");
Nu_b = 0.68*(Gr^(1/4))*(Pr^0.5)*((0.952+Pr)^(-1/4));
printf("Nu_L = %f \n",Nu_b);

// (c)
// McAdams correlation - Equation 6.2.30
disp("(c)");
printf("McAdams correlation \n");
Nu_c = 0.59*(Ra)^(1/4);
printf("Nu_L = %f \n",Nu_c);

// (d)
// Churchill and Chu correlation - Equation 6.2.31
disp("(d)")
printf("Churchill and Chu correlation\n");
Nu_d = 0.68 + 0.670*(Ra^(1/4))/[1+(0.492/Pr)^(9/16)]^(4/9);
printf("Nu_L = %f \n",Nu_d);