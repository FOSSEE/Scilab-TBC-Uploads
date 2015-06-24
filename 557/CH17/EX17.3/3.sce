clc; funcprot(0);//Example 17.3 

//Initializing the variables
Ma1 = 2;
gma = 1.4;
T1 = 15+273; // In kelvin
P1 = 105; 

//Calculations
Ma2 = sqrt(((gma-1)*Ma1^2 +2)/(2*gma*Ma1^2-gma+1));
P2 = P1*(1+gma*Ma1^2)/(1+gma*Ma2^2);
T2 = T1*(1 +(gma-1)/2*Ma1^2)/(1 +(gma-1)/2*Ma2^2);
disp(T2 - 273, "Temperature (Degree C) of downstream shock wave :",P2, "Pressure (bar) of downstream shock wave :",Ma2, "Mach No downstream shock wave :");