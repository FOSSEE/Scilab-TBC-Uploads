clear;
clc;

//Example - 10.2
//Page number - 334
printf("Example - 10.2 and Page number - 334\n\n");

// Given
T = 40 + 273.15;//[C] - Temperature
P_1 = 0;//[bar]
P_2 = 10;//[bar]
V_liq = 90.45;//[cm^(3)/mol]
V_liq = V_liq*10^(-6);//[m^(3)/mol]
P_sat = 4.287;//[bar] 

// For butadiene
T_c = 425.0;//[K] - Critical temperature
P_c = 43.3;//[bar] - Critical pressure
P_c = P_c*10^(5);//[N/m^(2)]
w = 0.195;// Acentric factor
R = 8.314;//[J/mol*K] - Universal gas constant

// Let us calculate second virial coefficient at 40 C
Tr = T/T_c;// Reduced temperature
B_0 = 0.083-(0.422/(Tr)^(1.6));
B_1 = 0.139-(0.172/(Tr)^(4.2));
//We know,(B*Pc)/(R*Tc) = B_0+(w*B_1)
B = ((B_0 + (w*B_1))*(R*T_c))/P_c;//[m^(3)/mol] - Second virial coefficient

// log(f/P) = (B*P)/(R*T)
// f = P*exp((B*P)/(R*T))

printf(" The table is as follows\n\n")
printf(" P(bar) \t\t f(bar) \t\t phi\n");

P = [1,2,3,4,4.287,5,6,8,10];
f = zeros(9);
phi = zeros(9);
for i=1:5;
    f(i)=P(i)*(exp((B*P(i)*10^(5))/(R*T)));//[bar]  // Pressure inside the exponential term has to be in N/m^(2)
    phi(i)= (f(i)/P(i));
   printf(" %f \t %f \t\t\t %f\n",P(i),f(i),phi(i));
end
f_sat = f(5);

// From pressure of 4.287 bar onwards the valid equation to compute fugacity of compressed liquid is given by
// f = f_sat*exp[V_liq*(P-P_sat)/(R*T)]

for j=6:9
    f(j) = f_sat*exp((V_liq*(P(j)-P_sat)*10^(5))/(R*T));//[bar]  // Pressure inside the exponential term has to be in N/m^(2)
    phi(j) = f(j)/P(j); 
    printf(" %f \t %f \t\t\t %f\n",P(j),f(j),phi(j));
end

