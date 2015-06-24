clear;
clc;
funcprot(0);

//Example - 15.6
//Page number - 521
printf("Example - 15.6 and Page number - 521\n\n");

//Given
P = 90;//[kPa] - Pressure
R = 8.314;//[J/mol*K] - Universal gas constant

// log(P_sat) = A - B/(t + C)

// For benzene
A_1 = 13.8594;
B_1 = 2773.78;
C_1 = 220.07;
// For ethyl benzene
A_2 = 14.0045;
B_2 = 3279.47;
C_2 = 213.20;

x_1 = 0.5;// Equimolar mixture
x_2 = 0.5;

// The bubble point temperature equation is
// P = x_1*P_1_sat + x_2*P_2_sat

t_1_sat = B_1/(A_1 - log(P)) - C_1;
t_2_sat = B_2/(A_2 - log(P)) - C_2;
t = x_1*t_1_sat + x_2*t_2_sat;

fault = 10;
while(fault>0.3)
    P_1_sat = exp(A_1 - B_1/(t + C_1));
    P_2_sat = exp(A_2 - B_2/(t + C_2));
    P_net = x_1*P_1_sat + x_2*P_2_sat;
    fault=abs(P_net - P);
    t = t - 0.1;
end

printf(" The bubble point temperature is %f C\n\n",t);

// Now let us determine dew point temperature for y_1 = 0.5, and P = 90 kPa
y_1 = 0.5;// Equimolar mixture
y_2 = 0.5;

// 1/P = y_1/P_1_sat + y_2/P_2_sat
// Let us statrt with t = 104.07
t_old = 104.07;
error = 10;
while(error>0.3)
    P_1_sat_prime = exp(A_1 - B_1/(t_old + C_1));
    P_2_sat_prime = exp(A_2 - B_2/(t_old + C_2));
    P_net_prime = 1/(y_1/P_1_sat_prime + y_2/P_2_sat_prime);
    error=abs(P_net_prime - P);
    t_old = t_old + 0.1;
end

printf(" The dew point temperature is %f C",t_old);


