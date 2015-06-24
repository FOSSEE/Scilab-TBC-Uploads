clear;
clc;

//Example - 15.14
//Page number - 531
printf("Example - 15.14 and Page number - 531\n\n");

//Given
T = 90;//[C]
P = 1;//[atm]
P = P*101325*10^(-3);//[kPa]
z_1 = [0.1,0.5,0.8];

// log(P_1_sat) = 13.8594 - 2773.78/(t + 220.07)
// log(P_2_sat) = 14.0098 - 3103.01/(t + 219.79)

//(a)
//At T = 90 C
P_1_sat = exp(13.8594 - 2773.78/(T + 220.07));
P_2_sat = exp(14.0098 - 3103.01/(T + 219.79));
K_1 = P_1_sat/P;

x_1 = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0];
P_prime = zeros(1,11);
x_2 = zeros(11);
y_1 = zeros(11);

printf(" (a).\n\n");
printf(" x_1    \t\t  P   \t\t   y_1      \n\n");

for i=1:11;
    x_2(i) = 1 - x_1(i);
    P_prime(i) = x_1(i)*P_1_sat + x_2(i)*P_2_sat;
    y_1(i) = (x_1(i)*P_1_sat)/P_prime(i);
    printf(" %f \t  %f  \t   %f  \n",x_1(i),P_prime(i),y_1(i));
end

//(b)
T_1_sat = 2773.78/(13.8594-log(P)) - 220.07;//[C]
T_2_sat = 3103.01/(14.0098-log(P)) - 219.79;//[C]

T_prime = [110.62,107,104,101,98,95,92,89,86,83,80.09];

P1_sat = zeros(11);
P2_sat = zeros(11);
x_1 = zeros(11);
y_1 = zeros(11);

printf(" \n\n (b).\n\n");
printf(" T(C)  \t\t  P_1_sat (kPa)  \t\t P_2_sat (kPa) \t\t  x_1  \t\t  y_1 \n\n");

for j=1:11;
    P1_sat(j) = exp(13.8594 - 2773.78/(T_prime(j) + 220.07));
    P2_sat(j) = exp(14.0098 - 3103.01/(T_prime(j) + 219.79));
    x_1(j) = (P-P2_sat(j))/(P1_sat(j)-P2_sat(j));
    y_1(j) = (x_1(j)*P1_sat(j))/P;
    printf(" %f \t    %f    \t   %f    \t      %f  \t       %f \n",T_prime(j),P1_sat(j),P2_sat(j),x_1(j),y_1(j));
end

