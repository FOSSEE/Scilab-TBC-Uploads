clear;
clc;
funcprot(0);

//Example - 15.7
//Page number - 522
printf("Example - 15.7 and Page number - 522\n\n");

//Given
P = 1;//[bar] - Pressure
P = P*10^(2);//[kPa]

// log(P_1_sat) = 13.8594 - 2773.78/(t + 220.07)
// log(P_2_sat) = 14.0098 - 3103.01/(t + 219.79)

// The bubble point equation is
// P = x_1*P_1_sat + x_2*P_2_sat;

t_1_sat = 2773.78/(13.8594 - log(P)) - 220.07;
t_2_sat = 3103.01/(14.0098 - log(P)) - 219.79;

// For x_1 = 0.1
// t = x_1_1*t_1_sat + x_2_1*t_2_sat;
x_1 = [0.1,0.5,0.9];

for i=1:3
x_2(i) = 1 - x_1(i);
t = x_1(i)*t_1_sat + x_2(i)*t_2_sat;
fault = 10;
while(fault>0.3)
    P_1_sat = exp(13.8594 - 2773.78/(t + 220.07));
    P_2_sat = exp(14.0098 - 3103.01/(t + 219.79));
    P_net = x_1(i)*P_1_sat + x_2(i)*P_2_sat;
    fault=abs(P_net - P);
    t = t - 0.1;
end

printf(" The bubble point temperature (for x_1 = %f) is %f C\n",x_1(i),t);

end

printf("\n\n");

// Now let us determine dew point temperature
// 1/P = y_1/P_1_sat + y_2/P_2_sat

y_1 = [0.1,0.5,0.9];

for j=1:3
y_2(j) = 1 - y_1(j);
t_prime = y_1(j)*t_1_sat + y_2(j)*t_2_sat;

error = 10;
while(error>0.3)
    P_1_sat = exp(13.8594 - 2773.78/(t_prime + 220.07));
    P_2_sat = exp(14.0098 - 3103.01/(t_prime + 219.79));
    P_net = 1/(y_1(j)/P_1_sat + y_2(j)/P_2_sat);
    error=abs(P_net - P);
    t_prime = t_prime + 0.1;
end

printf(" The dew point temperature (for y_1 = %f) is %f C\n",y_1(j),t_prime);

end

printf("\n\n");

//Therefore
printf(" The temperature range for (z_1 = 0.1) which two phase exist is 105.61 C to 108.11 C\n");
printf(" The temperature range for (z_1 = 0.5) which two phase exist is 91.61 C to 98.40 C\n");
printf(" The temperature range for (z_1 = 0.9) which two phase exist is 81.71 C to 84.51 C\n");

