clear;
clc;
funcprot(0);

//Example - 15.2
//Page number - 515
printf("Example - 15.2 and Page number - 515\n\n");

//Given
// log(P_1_sat) = 14.39155 - 2795.817/(t + 230.002)
// log(P_2_sat) = 16.26205 - 3799.887/(t + 226.346)

//(a)
x_1_a =0.43;// Equilibrium composition of liquid phase
t_a = 76;//[C] - Temperature
x_2_a = 1 - x_1_a;

// Since liquid phase composition is given we use the relation 
// P = x_1*P_1_sat + x_2*P_2_sat
// At t = 76 C
P_1_sat_a = exp(14.39155 - 2795.817/(t_a + 230.002));
P_2_sat_a = exp(16.26205 - 3799.887/(t_a + 226.346));
// Therefore total pressure is
P_a = x_1_a*P_1_sat_a + x_2_a*P_2_sat_a;//[kPa]
y_1_a = (x_1_a*P_1_sat_a)/(P_a);
y_2_a = (x_2_a*P_2_sat_a)/(P_a);

printf("(a).The system pressure is, P = %f kPa\n",P_a);
printf("    The vapour phase composition is, y_1 = %f\n\n",y_1_a);

//(b)
y_1_b = 0.43;// Equilibrium composition of vapour phase
y_2_b = 1 - y_1_b;
t_b = 76;//[C] - Temperature

P_1_sat_b = exp(14.39155 - 2795.817/(t_b + 230.002));
P_2_sat_b = exp(16.26205 - 3799.887/(t_b + 226.346));

// Since vapour phase composition is given ,the system pressure is given by
// 1/P = y_1/P_1_sat + y_2/P_2_sat
P_b = 1/(y_1_b/P_1_sat_b + y_2_b/P_2_sat_b);

x_1_b = (y_1_b*P_b)/P_1_sat_b;
x_2_b = (y_2_b*P_b)/P_2_sat_b;

printf("(b).The system pressure is, P = %f kPa\n",P_b);
printf("    The liquid phase composition is, x_1 = %f\n\n",x_1_b);

//(c)
x_1_c = 0.32;// Equilibrium composition of liquid phase
x_2_c = 1 - x_1_c;
P_c = 101.33;//[kPa] - Pressure of the system

// We have,  P = x_1*P_1_sat + x_2*P_2_sat
t_1_sat = 2795.817/(14.39155 - log(P_c)) - 230.002;
t_2_sat = 3799.887/(16.26205 - log(P_c)) - 226.346;
t = x_1_c*t_1_sat + x_2_c*t_2_sat;

error = 10;
while(error>0.1)
    P_1_sat = exp(14.39155 - 2795.817/(t + 230.002));
    P_2_sat = exp(16.26205 - 3799.887/(t + 226.346));
    P = x_1_c*P_1_sat + x_2_c*P_2_sat;
    error=abs(P - P_c);
    t = t - 0.1;
end

P_1_sat_c = exp(14.39155 - 2795.817/(t + 230.002));
P_2_sat_c = exp(16.26205 - 3799.887/(t + 226.346));

y_1_c = (x_1_c*P_1_sat_c)/(P_c);
y_2_c = 1 - y_1_c;

printf("(c).The system temperature is, t = %f C\n",t);
printf("    The vapour phase composition is, y_1 = %f\n\n",y_1_c);

//(d)
y_1_d = 0.57;// Vapour phase composition
y_2_d = 1 - y_1_d;
P_d = 101.33;//[kPa] - Pressure of the system

// Since vapour phase composition is given, we can use the relation
// 1/P = y_1/P_1_sat + y_2/P_2_sat
t_1_sat_d = 2795.817/(14.39155 - log(P_d)) - 230.002;
t_2_sat_d = 3799.887/(16.26205 - log(P_d)) - 226.346;
t_d = y_1_d*t_1_sat_d + y_2_d*t_2_sat_d;

fault = 10;
while(fault>0.1)
    P_1_sat_prime = exp(14.39155 - 2795.817/(t_d + 230.002));
    P_2_sat_prime = exp(16.26205 - 3799.887/(t_d + 226.346));
    P_prime = 1/(y_1_d/P_1_sat_prime + y_2_d/P_2_sat_prime);
    fault=abs(P_prime - P_d);
    t_d = t_d + 0.01;
end

P_1_sat_d = exp(14.39155 - 2795.817/(t_d + 230.002));
P_2_sat_d = exp(16.26205 - 3799.887/(t_d + 226.346));

x_1_d = (y_1_d*P_d)/(P_1_sat_d);
x_2_d = 1 - x_1_d;

printf("(d).The system temperature is, t = %f C\n",t_d);
printf("    The liquid phase composition is, x_1 = %f\n\n",x_1_d);



