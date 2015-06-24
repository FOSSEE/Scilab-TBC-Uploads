clear;
clc;
funcprot(0);

//Example - 15.15
//Page number - 533
printf("Example - 15.15 and Page number - 533\n\n");

//Given
// log(Y1) = 0.95*x_2^(2)
// log(Y2) = 0.95*x_1^(2)
P_1_sat = 79.80;//[kPa]
P_2_sat = 40.45;//[kPa]

//(1)
T = 373.15;//[K]
x_1 = 0.05;
x_2 = 1 - x_1;
Y1 = exp(0.95*x_2^(2));
Y2 = exp(0.95*x_1^(2));

// The total pressure of the system is given by
P = x_1*Y1*P_1_sat + x_2*Y2*P_2_sat;//[kPa]
y_1 = x_1*Y1*P_1_sat/P;
y_2 = x_2*Y2*P_2_sat/P;

printf(" (1).The first bubble is formed at %f kPa and the composition, y_1 = %f\n\n",P,y_1);

//(2)
T = 373.15;//[K]
y_1_prime = 0.05;
y_2_prime = 1 - y_1_prime;

// Let us assume a value of x_1,
x_1_prime = 0.0001;

error = 10;
while(error>0.001)
    x_2_prime = 1 - x_1_prime;
    Y1_prime = exp(0.95*x_2_prime^(2));
    Y2_prime = exp(0.95*x_1_prime^(2));
    P_prime = x_1_prime*Y1_prime*P_1_sat + x_2_prime*Y2_prime*P_2_sat;
    x_1 = (y_1_prime*P_prime)/(Y1_prime*P_1_sat);
    error=abs(x_1_prime - x_1);
    x_1_prime = x_1_prime + 0.00001;
end

P_2 = x_1_prime*Y1_prime*P_1_sat + x_2_prime*Y2_prime*P_2_sat;

printf(" (2).The first drop is formed at %f kPa and has the composition, x_1 = %f",P_2,x_1_prime);



