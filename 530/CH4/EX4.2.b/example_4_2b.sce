clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 4
// Principles of Fluid Flow

// Example 4.2(b)
// Page 180
printf("Example 4.2(b), Page 180 \n\n")

L = 3 ; //[m]
D = 0.01 ; //[m]
V = 0.2 ; //[m/s]

// (b)

V1=0.7;
v1 = 1.306 * 10^-6 ; // [m^2/s]

printf("(b) If the velocity is increased to 0.7 \n");
// if velocity of water is 0.7 m/s
V1=0.7; // [m/s]
Re_D1=V1*D/(1.306*10^-6);
printf("Reynolds no is %f \n",Re_D1);

// flow is again turbulent
f1 = 0.079*(Re_D1)^(-0.25);

delta_p1 = (4*f1*L*999.7*0.7^2)/(0.01*2); // [Pa]
printf("Pressure drop is %f Pa \n",delta_p1);

// x1 = (T_w/p)^0.5 = ((f1/2)^0.5)*V ;
x1 = ((f1/2)^0.5)*V1 ;

y1_plus = 0.005*x1/(v1);
printf("y+ at centre line = %f \n",y1_plus);

V_max1 = x1*(2.5* log(y1_plus) + 5.5) ; // [m/s]
printf("V_max is %f m/s \n",V_max1);

ratio1 = V_max1/V1;
printf("Vmax/Vbar = %f ",ratio1);
