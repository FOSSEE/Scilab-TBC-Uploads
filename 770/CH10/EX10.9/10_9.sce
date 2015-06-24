clear;
clc;

//Example - 10.9
//Page number - 344
printf("Example - 10.9 and Page number - 344\n\n");

//Given
T = 0 + 273.15;//[K] - Temperature
R = 8.314;//[J/mol*K] - Universal gas constant
// Pressure in 'atm' is given below
P = [100,200,300,400,500,600,700,800,900,1000];
// The compressibility factor values are
Z = [1.069,1.138,1.209,1.283,1.356,1.431,1.504,1.577,1.649,1.720];

// Z = 1 + (B/V) + (C/V^(2))
// (Z-1)*V = B + (C/V)


V = zeros(1,10);
k = zeros(1,10);
t = zeros(1,10);
for i=1:10;
    V(1,i)=Z(i)*R*T/(P(i)*101325);//[m^(3)/mol]
    k(1,i)=(Z(i)-1)*V(i);
    t(1,i)=1/V(i);
end
[C,B,sig]=reglin(t,k);

//From the regression, we get intercept = B and slope = C,and thus,

printf(" (1).The second virial coefficient of H2 is given by B = %e m^(3)/mol\n",B);
printf("     The thied virial coefficient of H2 is given by C = %e m^(6)/mol^(2)\n\n",C);

// (2)
// We know that, limit P tending to zero (V-(R*T)/P) = B, therfore P = 0,  V-(R*T)/P = B
// Now let us tabulate V-(R*T)/P and determine the integral integrate('(V-(R*T)/P)','P',0,1000)

P_prime = [0,100,200,300,400,500,600,700,800,900,1000];
Z_prime = [0,1.069,1.138,1.209,1.283,1.356,1.431,1.504,1.577,1.649,1.720];

summation = 0;
V_prime = zeros(1,11);
x = zeros(1,11);
y = zeros(1,11);
z = zeros(1,11);
for j=2:11;
    V_prime(1,j)=Z_prime(j)*R*T/(P_prime(j)*101325);//[m^(3)/mol]
    x(1,j)=V_prime(j)-(R*T)/(P_prime(j)*101325);
    y(1,j)=(x(j) + x(j-1))/2;
    z(1,j)=y(j)*((P_prime(j)-P_prime(j-1)))*101325;
    summation = summation + z(j) ;//[J/mol]
end

summation = summation + 2*z(2) - z(2);// Because in the above calculation,in order to calculate the average a summation of z(2) is not included,only half of it gets added

// Now we have
// R*T*log(f/P) = summation
P_dash = 1000;//[atm] - Pressure at which fugacity is to be calculated
T_dash = 273.15;//[K] - Temperature at which fugacity is to be calculated
f = P_dash*exp(summation/(R*T_dash));//[atm] 

printf(" (2).The fugacity of H2 at 0 C and 1000 atm pressure is, f = %f atm\n",f);


