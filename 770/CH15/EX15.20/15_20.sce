clear;
clc;

//Example - 15.20
//Page number - 541
printf("Example - 15.20 and Page number - 543\n\n");

//Given
T = 25;//[C] - Temperature
P_1_sat = 230.4;//[mm Hg]
P_2_sat = 97.45;//[mm Hg]
Y1_infinity = 8.6;
Y2_infinity = 6.6;

// Assuming ideal vpour behaviour means that phi = 1 and since system pressure is low, therefore
// f_i = P_i_sat 
// Assuming the activity coefficients to follow van Laar model we get
A = log(Y1_infinity);
B = log(Y2_infinity);

//log(Y1) = A/(1+ (A*x_1)/(B*x_2))^(2)
// log(Y2) = B/(1+ (B*x_2)/(A*x_1))^(2)

x_1 = [0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9];

x_2 = zeros(9);
Y1 = zeros(9);
Y2 = zeros(9);
y1_P = zeros(9);
y2_P = zeros(9);
P = zeros(9);
y_1 = zeros(9);

printf(" (a).\n\n");
printf(" x_1      \t\t    Y1    \t\t    Y2    \t\t    y1*P    \t\t    y2*P   \t\t   P    \t\t   y_1 \n\n");

for i=1:9;
    x_2(i) = 1 - x_1(i);
    Y1(i) = exp(A/(1+ (A*x_1(i))/(B*x_2(i)))^(2));
    Y2(i) = exp(B/(1+ (B*x_2(i))/(A*x_1(i)))^(2));
    y1_P(i) = x_1(i)*Y1(i)*P_1_sat;
    y2_P(i) = x_2(i)*Y2(i)*P_2_sat;
    P(i) = x_1(i)*Y1(i)*P_1_sat + x_2(i)*Y2(i)*P_2_sat;
    y_1(i) = (x_1(i)*Y1(i)*P_1_sat)/P(i);
    printf(" %f\t\t %f\t\t %f \t\t %f \t\t %f \t\t %f \t   %f\n\n",x_1(i),Y1(i),Y2(i),y1_P(i),y2_P(i),P(i),y_1(i));

end

//(b)
// The total system pressure versus x_1 shows a maxima and thus azeotrope is formed by the VLE system
// The maxima occurs in the range of x_1 = 0.6 to 0.8, so an  azeotrope is formed in this composition range

// At the azeotrope  point, Y1*P1_sat = Y2*P2_sat
// log(Y1) - log(Y2) = log(P_2_sat/P_1_sat)
// On putting the values and then solving the above equation we get
deff('[y]=f(x_1)','y= A/(1+1.14*x_1/(1-x_1))^(2)- B/(1+0.877*(1-x_1)/x_1)^(2) - log(P_2_sat/P_1_sat)');
x_1_prime = fsolve(0.1,f);

// At x_1
x_2_prime = 1 - x_1_prime;
Y1_prime = exp(A/(1+ (A*x_1_prime)/(B*x_2_prime))^(2));
Y2_prime = exp(B/(1+ (B*x_2_prime)/(A*x_1_prime))^(2));
P_prime = x_1_prime*Y1_prime*P_1_sat + x_2_prime*Y2_prime*P_2_sat;//[kPa] - Azeotrope pressure
y_1_prime = (x_1_prime*Y1_prime*P_1_sat)/P_prime;

// Since x_1 = y_1,azeotrope formation will take place
printf(" (b)\n\n");
printf(" The total system pressure versus x_1 shows a maxima and thus azeotrope is formed by the VLE system\n\n");
printf(" The azeotrope composition is x_1 = y_1 = %f\n\n",x_1_prime);
printf(" The azeotrope presssure is %f mm Hg\n",P_prime);


