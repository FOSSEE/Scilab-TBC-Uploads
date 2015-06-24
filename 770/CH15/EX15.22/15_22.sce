clear;
clc;

//Example - 15.22
//Page number - 545
printf("Example - 15.22 and Page number - 545\n\n");

//Given
T = 25;//[C]
// At 50 C
P_1_sat = 7.866;//[kPa]
P_2_sat = 3.140;//[kPa]

// G_E/(R*T) = 1.4938*x_1*x_2/(1.54*x_1 + 0.97*x_2)

// The excess Gibbs free energy expression can be written as
// x_1*x_2/(G_E/(R*T)) = 1.54*x_1/1.4938 + 0.97*x_2/1.4938 = x_1/0.97 + x_2/1.54

// Comparing with the van Laar expression
// x_1*x_2/(G_E/(R*T)) = x_1/B + x_2/A,  we get
A = 1.54;
B = 0.97;

// The activity coefficients are thus given by
// log(Y1) = A/(1+ (A*x_1)/(B*x_2))^(2)
// log(Y2) = B/(1+ (B*x_2)/(A*x_1))^(2)

x_1 = [0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,0.95];

x_2 = zeros(1,10);
Y1 = zeros(1,10);
Y2 = zeros(1,10);
P = zeros(1,10);
y_1 = zeros(1,10);

printf(" x_1      \t\t    Y1    \t\t    Y2    \t\t P (kPa)    \t\t  y_1 \n\n");

for i=1:10;
    x_2(1,i) = 1 - x_1(i);
    Y1(1,i) = exp(A/(1+ (A*x_1(i))/(B*x_2(i)))^(2));
    Y2(1,i) = exp(B/(1+ (B*x_2(i))/(A*x_1(i)))^(2));
    P(1,i) = x_1(i)*Y1(i)*P_1_sat + x_2(i)*Y2(i)*P_2_sat;
    y_1(1,i) = (x_1(i)*Y1(i)*P_1_sat)/P(i);
    printf(" %f\t\t %f\t\t %f \t\t %f \t\t  %f \n\n",x_1(i),Y1(i),Y2(i),P(i),y_1(i));

end

// The azeotrope is formed near x_1 = 0.95 as in this region a maxima in pressure is obtained.

// At the azeotrope  point, Y1*P1_sat = Y2*P2_sat
// log(Y1) - log(Y2) = log(P_2_sat/P_2_sat)
// On putting the values and then solving the above equation
deff('[y]=f(x_1)','y= A/(1+ (A*x_1)/(B*(1-x_1)))^(2)- B/(1+ (B*(1-x_1))/(A*x_1))^(2) - log(P_2_sat/P_1_sat)');
x_1_prime = fsolve(0.1,f);

// At x_1
x_2_prime = 1 - x_1_prime;
Y1_prime = exp(A/(1+ (A*x_1_prime)/(B*x_2_prime))^(2));
Y2_prime = exp(B/(1+ (B*x_2_prime)/(A*x_1_prime))^(2));
P_prime = x_1_prime*Y1_prime*P_1_sat + x_2_prime*Y2_prime*P_2_sat;//[kPa] - Azeotrope pressure
y_1_prime = (x_1_prime*Y1_prime*P_1_sat)/P_prime;

// Since x_1_prime = y_1_prime,the azeotrope formation will take place

printf(" \n\nPart II \n\n");
printf(" The azeotrope composition is x_1 = y_1 = %f\n",x_1_prime);
printf(" The azeotrope presssure is %f kPa \n",P_prime);


