clear;
clc;
funcprot(0);

//Example - 15.16
//Page number - 534
printf("Example - 15.16 and Page number - 534\n\n");

//Given
T = 78.15;//[C]
P_1_sat = 755;//[mm Hg]
P_2_sat = 329;//[mm Hg]

z_1 = 0.3;
V = 0.5;

// log(Y1) = 0.845/(1 + 0.845*(x_1/x_2))^(2)
// log(Y2) = 1/(1 + 1.183*(x_2/x_1))^(2)

// A value of x_1 is to determined for which  V = 0.5
// Let us assume a value of x_1, say x_1 = 0.150
x_1 = 0.150;

error = 10;
while(error>0.001)
    x_2 = 1 - x_1;
    Y1 = exp(0.845/(1 + 0.845*(x_1/x_2))^(2));
    Y2 = exp(1/(1 + 1.183*(x_2/x_1))^(2));
    P = x_1*Y1*P_1_sat + x_2*Y2*P_2_sat;
    y_1 = (x_1*Y1*P_1_sat)/P;
    V_prime = (z_1 - x_1)/(y_1 - x_1);
    error=abs(V_prime - V);
    x_1 = x_1 + 0.00001;
end

P_prime = x_1*Y1*P_1_sat + x_2*Y2*P_2_sat;//[mm hg]

// At x_1 ,  V = 0.5, 
// Therefore when the mixture is 50 % vaporized at 78.15 C the mole fraction of component 1 in the liquid phase is x_1 and the system pressure is P_prime

printf(" The required pressure is %f mm Hg\n\n",P_prime);
printf(" and the mole fraction of component 1 in the liquid phase for this pressure is x_1 = %f\n\n",x_1);


