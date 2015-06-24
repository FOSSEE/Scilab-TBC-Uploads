clear;
clc;

// Example - 13.7
// Page number - 447
printf("Example - 13.7 and Page number - 447\n\n");

//Given
T = 460;//[K] - Temperature
P = 40*10^(5);//[Pa] - Pressure
R=8.314;//[J/mol*K] - Universal gas constant
// component 1 = nitrogen
// component 2 = n-Butane
y1 = 0.4974;// Mole percent of nitrogen
y2 = 0.5026;// Mole percent of n-Butane
Tc_nit = 126.2;//[K]
Pc_nit = 34.00*10^(5);//[Pa]
Tc_but = 425.1;//[K]
Pc_but = 37.96*10^(5);//[Pa]

// (1). van der Walls equation of state

// The fugacity coefficient of component 1 in a binary mixture following van der Walls equation of state is given by,
// log(phi_1) = b_1/(V-b) - log(Z-B) -2*(y1*a_11 + y2*a_12)/(R*T*V)
// and for component 2 is given by,
// log(phi_2) = b_2/(V-b) - log(Z-B) -2*(y1*a_12 + y2*a_22)/(R*T*V)
// Where B = (P*b)/(R*T)

// For componenet 1 (nitrogen)
a_1 = (27*R^(2)*Tc_nit^(2))/(64*Pc_nit);//[Pa-m^(6)/mol^(2)]
b_1 = (R*Tc_nit)/(8*Pc_nit);//[m^(3)/mol]

// Similarly for componenet 2 (n-Butane)
a_2 = (27*R^(2)*Tc_but^(2))/(64*Pc_but);//[Pa-m^(6)/mol^(2)]
b_2 = (R*Tc_but)/(8*Pc_but);//[m^(3)/mol]

// Here
a_11 = a_1;
a_22 = a_2;
// For cross coefficient
a_12 = (a_1*a_2)^(1/2);//[Pa-m^(6)/mol^(2)]

// For the mixture 
a = y1^(2)*a_11 + y2^(2)*a_22 + 2*y1*y2*a_12;//[Pa-m^(6)/mol^(2)]
b = y1*b_1 + y2*b_2;//[m^(3)/mol]

// The cubic form of the van der Walls equation of state is given by,
// V^(3) - (b+(R*T)/P)*V^(2) + (a/P)*V - (a*b)/P = 0
// Substituting the value and solving for V, we get
// Solving the cubic equation
deff('[y]=f(V)','y=V^(3)-(b+(R*T)/P)*V^(2)+(a/P)*V-(a*b)/P');
V_1=fsolve(-1,f);
V_2=fsolve(0,f);
V_3=fsolve(1,f);
// The molar volume V = V_3, the other two roots are imaginary
V = V_3;//[m^(3)/mol]

// The comprssibility factor of the mixture is 
Z = (P*V)/(R*T);
// And B can also be calculated as
B = (P*b)/(R*T);

// The fugacity coefficient of component 1 in the mixture is
phi_1 = exp(b_1/(V-b) - log(Z-B) -2*(y1*a_11 + y2*a_12)/(R*T*V));
// Similarly fugacity coefficient of component 2 in the mixture is 
phi_2 = exp(b_2/(V-b) - log(Z-B) -2*(y1*a_12 + y2*a_22)/(R*T*V));

// The fugacity coefficient of the mixture is given by,
// log(phi) = y1*log(phi_1) + y2*log(phi_2)
phi = exp(y1*log(phi_1) + y2*log(phi_2));

// Also the fugacity coefficient of the mixture following van der Walls equation of state is given by,
// log(phi) = b/(V-b) - log(Z-B) -2*a/(R*T*V)
phi_dash = exp(b/(V-b) - log(Z-B) -2*a/(R*T*V));
// The result is same as obtained above

printf(" (1)van der Walls equation of state\n");
printf("  The value of fugacity coefficient of component 1 (nitrogen) is %f\n",phi_1);
printf("  The value of fugacity coefficient of component 2 (n-butane) is %f\n",phi_2);
printf("  The value of fugacity coefficient of the mixture is %f\n",phi);
printf("  Also the fugacity coefficient of the mixture from van der Walls equation of state is %f (which is same as above)\n\n",phi_dash);

// (2). Redlich-Kwong equation of state

// For component 1,
a_1_prime = (0.42748*R^(2)*Tc_nit^(2.5))/Pc_nit;//[Pa-m^(6)/mol^(2)]
b_1_prime = (0.08664*R*Tc_nit)/Pc_nit;//[m^(3)/mol]

//similarly for component 2,
a_2_prime = (0.42748*R^(2)*Tc_but^(2.5))/Pc_but;//[Pa-m^(6)/mol^(2)]
b_2_prime = (0.08664*R*Tc_but)/Pc_but;//[m^(3)/mol]

// For cross coefficient
a_12_prime = (a_1_prime*a_2_prime)^(1/2);//[Pa-m^(6)/mol^(2)]
// For the mixture
a_prime = y1^(2)*a_1_prime + y2^(2)*a_2_prime +2*y1*y2*a_12_prime;//[Pa-m^(6)/mol^(2)]
b_prime = y1*b_1_prime +y2*b_2_prime;//[m^(3)/mol]


//The cubic form of Redlich Kwong equation of state is given by,
//  V^(3)-((R*T)/P)*V^(2)-((b^(2))+((b*R*T)/P)-(a/(T^(1/2)*P))*V-(a*b)/(T^(1/2)*P)=0
// Solving the cubic equation
deff('[y]=f1(V)','y=V^(3)-((R*T)/P)*V^(2)-((b_prime^(2))+((b_prime*R*T)/P)-(a_prime/(T^(1/2)*P)))*V-(a_prime*b_prime)/(T^(1/2)*P)');
V_4=fsolve(1,f1);
V_5=fsolve(0,f1);
V_6=fsolve(-1,f1);
// The molar volume V = V_4, the other two roots are imaginary
V_prime = V_4;//[m^(3)/mol]

// The compressibility factor of the mixture is
Z_prime = (P*V_prime)/(R*T);
// And B can also be calculated as
B_prime = (P*b_prime)/(R*T);

// The fugacity coefficient of component 1 in the binary mixture is given by
// log(phi_1) = b_1/(V-b) - log(Z-B) + ((a*b_1)/((b^(2)*R*T^(3/2))))*(log((V+b)/V)-(b/(V+b)))-(2*(y1*a_1+y2*a_12)/(R*T^(3/2)b))*(log(V+b)/b)

phi_1_prime = exp((b_1_prime/(V_prime-b_prime))-log(Z_prime-B_prime)+((a_prime*b_1_prime)/((b_prime^(2))*R*(T^(3/2))))*(log((V_prime+b_prime)/V_prime)-(b_prime/(V_prime+b_prime)))-(2*(y1*a_1_prime+y2*a_12_prime)/(R*(T^(3/2))*b_prime))*(log((V_prime+b_prime)/V_prime)));


// Similarly fugacity coefficient of component 2 in the mixture is 
phi_2_prime = exp((b_2_prime/(V_prime-b_prime))-log(Z_prime-B_prime)+((a_prime*b_2_prime)/((b_prime^(2))*R*(T^(3/2))))*(log((V_prime+b_prime)/V_prime)-(b_prime/(V_prime+b_prime)))-(2*(y1*a_12_prime+y2*a_2_prime)/(R*(T^(3/2))*b_prime))*(log((V_prime+b_prime)/V_prime)));

// The fugacity coefficient of the mixture is given by,
// log(phi) = y1*log(phi_1) + y2*log(phi_2)
phi_prime = exp(y1*log(phi_1_prime) + y2*log(phi_2_prime));

// Also the fugacity coefficient for the mixture following Redlich-kwong equation of state is also given by
// log(phi) = b/(V-b) - log(Z-B) - (a/(R*T^(3/2)))*(1/(V+b)+(1/b)*log((V+b)/V))
phi_prime_dash = exp(b_prime/(V_prime-b_prime) - log(Z_prime-B_prime) - (a_prime/(R*T^(3/2)))*(1/(V_prime+b_prime)+(1/b_prime)*log((V_prime+b_prime)/                   V_prime)));

printf(" (2)Redlich-Kwong equation of state\n");
printf("  The value of fugacity coefficient of component 1 (nitrogen) is %f\n",phi_1_prime);
printf("  The value of fugacity coefficient of component 2 (n-butane) is %f\n",phi_2_prime);
printf("  The value of fugacity coefficient of the mixture is %f\n",phi_prime);
printf("  Also the fugacity coefficient for the mixture from Redlich-kwong equation of state is %f (which is same as above)\n\n",phi_prime_dash);
