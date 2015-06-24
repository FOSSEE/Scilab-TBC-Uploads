clear;
clc;
funcprot(0);

//Example - 15.5
//Page number - 520
printf("Example - 15.5 and Page number - 520\n\n");

//Given
T = 27;//[C] - Temperature

// log(P_1_sat) = 13.8216 - 2697.55/(t + 224.37)
// log(P_2_sat) = 13.8587 - 2911.32/(t + 216.64)

//(a)
x_1_a = 0.2;
x_2_a = 1 - x_1_a;

// At t = 27 C
P_1_sat = exp(13.8216 - 2697.55/(T + 224.37));//[kPa]
P_2_sat = exp(13.8587 - 2911.32/(T + 216.64));//[kPa]
P_a = x_1_a*P_1_sat + x_2_a*P_2_sat;//[kPa]

y_1_a = x_1_a*P_1_sat/P_a;
y_2_a = x_2_a*P_2_sat/P_a;

printf("(a).The total pressure is, P = %f kPa\n",P_a);
printf("    The vapour phase composition is given by, y_1 = %f and y_2 = %f\n\n",y_1_a,y_2_a);

//(b)
y_1_b = 0.2;
y_2_b = 1 - y_1_b;
// Since vapour phase composition is given we can use the relation 
P_b = 1/(y_1_b/P_1_sat + y_2_b/P_2_sat);//[kPa]

// Therefore we have
x_1_b = (y_1_b*P_b)/P_1_sat;
x_2_b = (y_2_b*P_b)/P_2_sat;

printf("(b).The total pressure is, P = %f kPa\n",P_b);
printf("    The liquid phase composition is given by, x_1 = %f and x_2 = %f\n\n",x_1_b,x_2_b);

//(c)
P_c = 30;//[kPa] - Total pressure
x_1_c = 0.2;
x_2_c = 1 - x_1_c;

// We have,  P = x_1*P_1_sat + x_2*P_2_sat
t_1_sat = 2697.55/(13.8216 - log(P_c)) - 224.37;
t_2_sat = 2911.32/(13.8587 - log(P_c)) - 216.64;
t = x_1_c*t_1_sat + x_2_c*t_2_sat;

fault = 10;
while(fault>0.3)
    P_1_sat = exp(13.8216 - 2697.55/(t + 224.37));
    P_2_sat = exp(13.8587 - 2911.32/(t + 216.64));
    P = x_1_c*P_1_sat + x_2_c*P_2_sat;
    fault = abs(P - P_c);
    t = t - 0.1;
end

P_1_sat_c = exp(13.8216 - 2697.55/(t + 224.37));
P_2_sat_c = exp(13.8587 - 2911.32/(t + 216.64));

y_1_c = (x_1_c*P_1_sat_c)/(P_c);
y_2_c = 1 - y_1_c;

printf("(c).The system temperature is, t = %f C\n",t);
printf("    The vapour phase composition is, y_1 = %f and y_2 = %f \n\n",y_1_c,y_2_c);



