clear;
clc;

//Example - 12.2
//Page number - 421
printf("Example - 12.2 and Page number - 421\n\n");

//Given
//component 1 = water
//component 2 = methanol
T = 25 + 273.15;//[K] - Temperature

//delta_V_mix = x_1*x_2*(-3.377 - 2.945*x_1 + 3.31*x_1^(2))
V1 = 18.0684;//[cm^(3)/mol] - Molar volume of pure component 1
V2 = 40.7221;//[cm^(3)/mol] - Molar volume of pure component 2
Vol_1 = 1000;//[cm^(3)] - Volume of pure component 1
Vol_2 = 1000;//[cm^(3)] - Volume of pure component 2

//Moles of the componenets can be calculated as 
n_1 = Vol_1/V1;//[mol]
n_2 = Vol_2/V2;//[mol]

//Mole fraction of the components 
x_1 = n_1/(n_1 + n_2);
x_2 = n_2/(n_1 + n_2);

delta_V_mix = x_1*x_2*(-3.377 - 2.945*x_1 + 3.31*x_1^(2));//[cm^(3)/mol]

//Differentiating the above equation, we get
//d/dx(delta_V_mix) = (1 - 2*x_1)*(-3.377 - 2.945*x_1 + 3.31*x_1^(2)) + (x_1 - x_1^(2))*(-2.945 + 6.62*x_1)
del_delta_V_mix = (1 - 2*x_1)*(-3.377 - 2.945*x_1 + 3.31*x_1^(2)) + (x_1 - x_1^(2))*(-2.945 + 6.62*x_1);//[cm^(3)/mol]

//Now calculating the partial molar volumes
V1_bar = V1 + delta_V_mix + x_1*del_delta_V_mix;//[cm^(3)/mol] 
V2_bar = V2 + delta_V_mix - x_2*del_delta_V_mix;//[cm^(3)/mol]

//Finally molar volume of the solution is given by
V_sol = x_1*V1_bar + x_2*V2_bar;//[cm^(3)/mol]

// Total volume of the solution is given by
V_total = (n_1 + n_2)*V_sol;//[cm^(3)]

printf("The molar volume of the solution is %f cm^(3)/mol\n\n",V_sol);
printf("The total volume of the solution is %f cm^(3)",V_total);

