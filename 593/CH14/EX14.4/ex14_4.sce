clear;
//clc();

// Example 14.4
// Page: 382
printf("Example-14.4  Page no.-382\n\n");

//***Data***//
T = 300;//[K] Temperature of the centrifuge
R = 8.314;//[J/(mol*K)] Universal gas constant
// Mole fractions of the two components are 
y_UF6_238_1 = 0.993; // Mole fraction of UF6 with 238 isotope of uranium in feed
y_UF6_235_1 = 0.007;// Mole fraction of UF6 with 235 isotope of uranium in feed
M_UF6_238 = 352/1000;//[kg/mol] Molecular weight of UF6 with 238 isotope of uranium
M_UF6_235 = 349/1000;//[kg/mol] Molecular weight of UF6 with 235 isotope of uranium
r_in = 2/100;//[m] Interanal raddi of the centrifuge
r_out = 10/100;//[m] outer raddi of the centrifuge
f = 800;//[revolution/second] Rotational frequency of centrifuge

// Here the accelaration will come due to centrifugal force and is 
// g = w^(2)*r , where 'w' is angular speed and its value is w = 2*pie*f and 'r' is radius 
// But in the present case 'r' is varies as we move away from the axis of centrifuge
// After making integration by taking small elements at the distance 'r' we find the expression 
a = exp((M_UF6_235-M_UF6_238)*(2*3.141592*f)^(2)*(r_out^(2)-r_in^(2))/(2*R*T));

// Now Let the ratio y_i_2/y_i_1 = A
// Then we have 
A = 1/(y_UF6_235_1 + y_UF6_238_1/a);

// Now say y_i_1/y_i_2 = 1/A = B  , then
B = 1/A;

printf("The ratio of the mole fraction of UF6 (with uranium 235 isotope) at the 2 cm radius to that at the 10 cm radius is %0.3f",B);
