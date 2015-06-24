clear;
clc;
funcprot(0);

//Example - 15.3
//Page number - 516
printf("Example - 15.3 and Page number - 516\n\n");

//Given
// log(P_1_sat) = 14.3916 - 2795.82/(t + 230.00)
// log(P_2_sat) = 14.2724 - 2945.47/(t + 224.00)
// log(P_3_sat) = 14.2043 - 2972.64/(t + 209.00)

//(a)
x_1_a = 0.25;// Equilibrium composition of liquid phase
x_2_a = 0.35;
x_3_a = 1 - x_1_a - x_2_a;
t_a = 80;//[C] - Temperature

// At t = 80 C
P_1_sat_a = exp(14.3916 - 2795.82/(t_a + 230.00));
P_2_sat_a = exp(14.2724 - 2945.47/(t_a + 224.00));
P_3_sat_a = exp(14.2043 - 2972.64/(t_a + 209.00));

// Since liquid phase composition is given we use the relation 
P_a = x_1_a*P_1_sat_a + x_2_a*P_2_sat_a + x_3_a*P_3_sat_a;//[kPa]

y_1_a = (x_1_a*P_1_sat_a)/(P_a);
y_2_a = (x_2_a*P_2_sat_a)/(P_a);
y_3_a = (x_3_a*P_3_sat_a)/(P_a);

printf("(a).The system pressure is, P = %f kPa\n",P_a);
printf("    The vapour phase composition is given by, y_1 = %f, y_2 = %f and y_3 = %f \n\n",y_1_a,y_2_a,y_3_a);

//(2)
y_1_b = 0.50;// Equilibrium composition of liquid phase
y_2_b = 0.30;
y_3_b = 1 - y_1_a - y_2_a;
t_b = 85;//[C] - Temperature

// At t = 80 C
P_1_sat_b = exp(14.3916 - 2795.82/(t_b + 230.00));
P_2_sat_b = exp(14.2724 - 2945.47/(t_b + 224.00));
P_3_sat_b = exp(14.2043 - 2972.64/(t_b + 209.00));

// Since vapour phase composition is given we use the relation 
P_b = 1/(y_1_b/P_1_sat_b + y_2_b/P_2_sat_b + y_3_b/P_3_sat_b);//[kPa]

// Therefore we have
x_1_b = (y_1_b*P_b)/P_1_sat_b;
x_2_b = (y_2_b*P_b)/P_2_sat_b;
x_3_b = (y_3_b*P_b)/P_3_sat_b;

printf("(b).The system pressure is, P = %f kPa\n",P_b);
printf("    The liquid phase composition is given by, x_1 = %f, x_2 = %f and x_3 = %f \n\n",x_1_b,x_2_b,x_3_b);

//(c)
x_1_c = 0.30;// Equilibrium composition of liquid phase
x_2_c = 0.45;
x_3_c = 1 - x_1_c - x_2_c;
P_c = 80;//[kPa] - Pressure of the system

// We have,  P = x_1*P_1_sat + x_2*P_2_sat + x_3*P_3_sat
t_1_sat = 2795.82/(14.3916 - log(P_c)) - 230.00;//[C]
t_2_sat = 2945.47/(14.2724 - log(P_c)) - 224.00;//[C]
t_3_sat = 2972.64/(14.2043 - log(P_c)) - 209.00;//[C]
t = x_1_c*t_1_sat + x_2_c*t_2_sat + x_3_c*t_3_sat;

error = 10;
while(error>0.5)
    P_1_sat = exp(14.3916 - 2795.82/(t + 230.00));
    P_2_sat = exp(14.2724 - 2945.47/(t + 224.00));
    P_3_sat = exp(14.2043 - 2972.64/(t + 209.00));
    P = x_1_c*P_1_sat + x_2_c*P_2_sat + x_3_c*P_3_sat;
    error=abs(P - P_c);
    t = t - 0.2;
end

P_1_sat_c = exp(14.3916 - 2795.82/(t + 230.00));
P_2_sat_c = exp(14.2724 - 2945.47/(t + 224.00));
P_3_sat_c = exp(14.2043 - 2972.64/(t + 209.00));

y_1_c = (x_1_c*P_1_sat_c)/(P_c);
y_2_c = (x_2_c*P_2_sat_c)/(P_c);
y_3_c = 1 - y_1_c - y_2_c;

printf("(c).The system temperature is, t = %f C\n",t);
printf("    The vapour phase composition is, y_1 = %f, y_2 %f and y_3 = %f\n\n",y_1_c,y_2_c,y_3_c);

//(d)
y_1_d = 0.6;// Vapour phase composition
y_2_d = 0.2;
y_3_d = 1 - y_1_d - y_2_d;
P_d = 90;//[kPa] - Pressure of the system

// Since vapour phase composition is given, we can use the relation
// 1/P = y_1/P_1_sat + y_2/P_2_sat + y_3/P_3_sat
t_1_sat_d = 2795.82/(14.3916 - log(P_d)) - 230.00;
t_2_sat_d = 2945.47/(14.2724 - log(P_d)) - 224.00;
t_3_sat_d = 2972.64/(14.2043 - log(P_d)) - 209.00;
t_d = y_1_d*t_1_sat_d + y_2_d*t_2_sat_d + y_3_d*t_3_sat_d;

fault = 10;
while(fault>0.5)
    P_1_sat_prime = exp(14.3916 - 2795.82/(t_d + 230.00));
    P_2_sat_prime = exp(14.2724 - 2945.47/(t_d + 224.00));
    P_3_sat_prime = exp(14.2043 - 2972.64/(t_d + 209.00));
    P_prime = 1/(y_1_d/P_1_sat_prime + y_2_d/P_2_sat_prime + y_3_d/P_3_sat_prime);
    fault=abs(P_prime - P_d);
    t_d = t_d + 0.2;
end

P_1_sat_d = exp(14.3916 - 2795.82/(t_d + 230.00));
P_2_sat_d = exp(14.2724 - 2945.47/(t_d + 224.00));
P_3_sat_d = exp(14.2043 - 2972.64/(t_d + 209.00));

x_1_d = (y_1_d*P_d)/(P_1_sat_d);
x_2_d = (y_2_d*P_d)/(P_2_sat_d);
x_3_d = 1 - x_1_d - x_2_d;

printf("(d).The system temperature is, t = %f C\n",t_d);
printf("    The liquid phase composition is, x_1 = %f, x_2 = %f and x_3 = %f\n\n",x_1_d,x_2_d,x_3_d);

