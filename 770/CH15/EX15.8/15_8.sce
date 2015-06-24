clear;
clc;
funcprot(0);

//Example - 15.8
//Page number - 524
printf("Example - 15.8 and Page number - 524\n\n");

//Given
x_1 = 0.20;
x_2 = 0.45;
x_3 = 0.35;
P = 10;//[atm]
P = P*101325*10^(-3);//[kPa]

// log(P_1_sat) = 13.7713 - 1892.47/(t + 248.82)
// log(P_2_sat) = 13.7224 - 2151.63/(t + 236.91)
// log(P_3_sat) = 13.8183 - 2477.07/(t + 233.21)

//(a)
// The bubble point equation is
// P = x_1*P_1_sat + x_2*P_2_sat + x_3*P_3_sat

t_1_sat = 1892.47/(13.7713 - log(P)) - 248.82;
t_2_sat = 2151.63/(13.7224 - log(P)) - 236.91;
t_3_sat = 2477.07/(13.8183 - log(P)) - 233.21;
t = x_1*t_1_sat + x_2*t_2_sat + x_3*t_3_sat;

fault = 10;
while(fault>0.1)
    P_1_sat = exp(13.7713 - 1892.47/(t + 248.82));
    P_2_sat = exp(13.7224 - 2151.63/(t + 236.91));
    P_3_sat = exp(13.8183 - 2477.07/(t + 233.21));
    P_net = x_1*P_1_sat + x_2*P_2_sat + x_3*P_3_sat;
    fault=abs(P_net - P);
    t = t - 0.003;
end

BPT = t;
printf(" (a).The bubble point temperature is %f C\n\n",BPT);

// (b)
// Now let us determine dew point temperature for y_1 = 0.5, and P = 90 kPa
y_1 = 0.20;
y_2 = 0.45;
y_3 = 0.35;

// 1/P = y_1/P_1_sat + y_2/P_2_sat + y_3/P_3_sat

t_old = 90;//[C]
error = 10;
while(error>0.1)
    P_1_sat_prime = exp(13.7713 - 1892.47/(t_old + 248.82));
    P_2_sat_prime = exp(13.7224 - 2151.63/(t_old + 236.91));
    P_3_sat_prime = exp(13.8183 - 2477.07/(t_old + 233.21));
    P_net_prime = 1/(y_1/P_1_sat_prime + y_2/P_2_sat_prime + y_3/P_3_sat_prime);
    error=abs(P_net_prime - P);
    t_old = t_old + 0.003;
end

DPT = t_old;
printf(" (b).The dew point temperature is %f C\n\n",DPT);

// (c)
// For the given composition and pressure the two phase region exists in  the temperature range of  DPT and BPT
// Therefore at 82 C two phase exists
// At 82 C and P = 1013.25 kPa pressure
T_c = 82;//[C]
P_c = 1013.25;//[kPa]
z_1 = 0.20;
z_2 = 0.45;
z_3 = 0.35;

P_1_sat_c = exp(13.7713 - 1892.47/(T_c + 248.82));
P_2_sat_c = exp(13.7224 - 2151.63/(T_c + 236.91));
P_3_sat_c = exp(13.8183 - 2477.07/(T_c + 233.21));

K_1 = P_1_sat_c/P_c;
K_2 = P_2_sat_c/P_c;
K_3 = P_3_sat_c/P_c;

// We have to find such a V that the following equation is satisfied.
// summation(y_i) = K_i*z_i/(1-V+V*K_i) = 1
// K_1*z_1/(1-V+V*K_1) + K_2*z_2/(1-V+V*K_2) + K_3*z_3/(1-V+V*K_3) = 1

deff('[y]=f1(V)','y= K_1*z_1/(1-V+V*K_1) + K_2*z_2/(1-V+V*K_2) + K_3*z_3/(1-V+V*K_3)-1');
V = fsolve(0.4,f1);

// Therefore now we have
y_1_c = K_1*z_1/(1-V+V*K_1);
y_2_c = K_2*z_2/(1-V+V*K_2);
y_3_c = K_3*z_3/(1-V+V*K_3);
x_1_c = y_1_c/K_1;
x_2_c = y_2_c/K_2;
x_3_c = y_3_c/K_3;

printf(" (c).The proportion of vapour is given by, V = %f\n\n",V);
printf("     The composition of vapour foemed is given by, y_1 = %f, y_2 = %f and y_3 = %f \n\n",y_1_c,y_2_c,y_3_c);
printf("     The composition of liquid formed is given by, x_1 = %f, x_2 = %f and x_3 = %f \n\n",x_1_c,x_2_c,x_3_c);








