clear;
clc;

//Example - 15.19
//Page number - 541
printf("Example - 15.19 and Page number - 541\n\n");

//Given
T = 45;//[C] - Temperature

x_1 = [0.0455,0.0940,0.1829,0.2909,0.3980,0.5069,0.5458,0.5946,0.7206,0.8145,0.8972,0.9573];
y_1 = [0.1056,0.1818,0.2783,0.3607,0.4274,0.4885,0.5098,0.5375,0.6157,0.6913,0.7869,0.8916];
P = [31.957,33.553,35.285,36.457,36.996,37.068,36.978,36.778,35.792,34.372,32.331,30.038];

// Pressure value for which x_1 = y_1 = 0, corresponds to P_2_sat,therefore
P_2_sat = 29.819;//[kPa]
// Pressure value for which x_1 = y_1 = 1, corresponds to P_1_sat,therefore
P_1_sat = 27.778;//[kPa]

x_2 = zeros(1,12);
y_2 = zeros(1,12);
Y1 = zeros(1,12);
Y2 = zeros(1,12);
alpha_12 = zeros(1,12);
GE_RT = zeros(1,12);
x1x2_GE_RT = zeros(1,12);

printf(" x_1  \t\t  y_1    \t   P   \t\t    Y1   \t\tY2  \t    alpha_12    \t  G_E/RT \t  x1*x2/(G_E/RT)\n\n");

for i=1:12;
    x_2(1,i) = 1 - x_1(i);
    y_2(1,i) = 1 - y_1(i);
    Y1(1,i) = (y_1(i)*P(i))/(x_1(i)*P_1_sat);
    Y2(1,i) = (y_2(i)*P(i))/(x_2(i)*P_2_sat);
    alpha_12(1,i) = (y_1(i)/x_1(i))/(y_2(i)/x_2(i));
    GE_RT(1,i) = x_1(i)*log(Y1(i)) + x_2(i)*log(Y2(i));// G_E/(R*T)
    x1x2_GE_RT(1,i) = (x_1(i)*x_2(i))/GE_RT(i);
    printf(" %f\t  %f\t  %f \t     %f  \t   %f \t     %f\t   %f  \t%f\n\n",x_1(i),y_1(i),P(i),Y1(i),Y2(i),alpha_12(i),GE_RT(i),x1x2_GE_RT(i));
end

[M,N,sig]=reglin(x_1,x1x2_GE_RT);

// Linear regression between x_1 and x_1*x_2/(G_E/R*T) gives intercept = N and slope = M

// Now let us assume the system to follow van Laar  activity coefficient model. 
// x_1*x_2/(G_E/(R*T)) = x_1/B + x_2/A =  x_1/B + (1 - x_1)/A  =  1/A + (1/B - 1/A)*x_1 = N + M*x_1

// 1/A = N
A = 1/N;
// (1/B - 1/A) = M
B = 1/(M + 1/A);

printf("\n\n")
printf(" The value of van Laar parameters are, A = %f and B = %f \n\n",A,B);

Y1_infinity = exp(A);
Y2_infinity = exp(B);


// Azeotrope is formed when maxima ( or mainina) in pressure is observed and relative volatility becomes 1.
// This is the case for x_1 between 0.2980 and 0.5458. 
// The ezeotropr os maximum pressure  (and thus minimum boiling) because at azeotrope the system pressure is greater than vapour pressure of pure components.

// Now let us calculate the azeotrope composition.
// At azeotrope, Y1*P1_sat = Y2*P2_sat
// log(Y1/Y2) = log(P_2_sat/P_1_sat)
// From van Laar model we get
// log(P_2_sat/P_1_sat) = (A*B^(2)*2*x_2^(2))/(A*x_1 + B*x_2)^(2) + (B*A^(2)*2*x_1^(2))/(A*x_1 + B*x_2)^(2)
// Solving the above equation
deff('[y]=f(x_1)','y= log(P_2_sat/P_1_sat) - (A*B^(2)*(1-x_1)^(2))/(A*x_1 + B*(1-x_1))^(2) + (B*A^(2)*x_1^(2))/(A*x_1 + B*(1-x_1))^(2)');
x_1 = fsolve(0.1,f);

printf(" The azeotrope composition is given by x_1 = y_1 = %f\n",x_1);



