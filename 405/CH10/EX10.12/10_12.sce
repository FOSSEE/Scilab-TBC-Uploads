clear;
clc;
printf("\t\t\tExample Number 10.12\n\n\n");
// comparison of single- or two-exchanger options  
// Example 10.12 (page no.-549-551) 
// solution

mdot_c = 1.25;// [kg/s] water flow rate
Ti = 35;// [degree celsius] initial temperature of water
Tf = 80;// [degree celsius] final temperature of water
Toi = 150;// [degree celsius] initial temperature of oil
Tof = 85;// [degree celsius] final temperature of oil
U = 850;// [W/square meter degree celsius] overall heat transfer coefficient
Cp_water = 4180;// [] specific heat of water
Cp_oil = 2000;// [J/kg degree celsius]  
// we calculate the surface area required for both alternatives and then compare costs. for the one large exchanger 
q = mdot_c*Cp_water*(Tf-Ti);// [W]
mdot_c_into_Cp_water = mdot_c*Cp_water;// [W/degree celsius]
mdot_h_into_Cp_oil = q/(Toi-Tof);// [W/degree celsius]
Cmin = mdot_h_into_Cp_oil;// [W/degree celsius]
Cmax = mdot_c_into_Cp_water;// [W/degree celsius]
// so that oil is the minimum fluid:
Eh = (Toi-Tof)/(Toi-Ti);
Cmin_by_Cmax = Cmin/Cmax;
// from figure 10-13(page no.-542), 
NTU_max = 1.09;
A = NTU_max*Cmin/U;// [square meter]
// we now wish to calculate the surface-area requirement for the two small exchanger because U*A and Cmin are the same for each exchanger. 
// this requires that the effectiveness be the same for each exchanger. thus,
// E1 = (Toi-Toe_1)/(Toi-Ti) = E2 = (Toi-Toe_2)/(Toi-Tw2)                                            (a)
// where the nomenclature for the temperatures is indicated in the sketch. because the oil flow is the same in each exchanger and the average exit oil temperature must be 85 degree celsius, we may write
// (Toe_1+Toe_2)/2 = 85                                                                              (b)
// an energy balance on the second heat exchanger gives
// mdot_c_into_Cp_water*(Tf-Tw2) = mdot_h_into_Cp_oil*(Toi-Toe_2)/2                                  (c)
// we now have three equations (a),(b), and (c) which may be solved for the three unknowns Toe_1, Toe_2, and Tw2. 
// eliminating Tw2, and Toe_1 from equation (a) by the help of equation (b) and (c)
deff('[y] = H(Toe_2)','y = (Toi-(170-Toe_2))/(Toi-Ti) - (Toi-Toe_2)/(Toi-(Tf-(mdot_h_into_Cp_oil*(Toi-Toe_2)/(mdot_c_into_Cp_water*2))))');
Toe_2 = fsolve(1,H);// [degree celsius]
Toe_1 = (170-Toe_2);// [degree celsius]
Tw2 = (Tf-(mdot_h_into_Cp_oil*(Toi-Toe_2)/(mdot_c_into_Cp_water*2)));// [degree celsius]
// the effectiveness can then be calculated as 
E1 = (Toi-Toe_1)/(Toi-Ti);
E2 = E1;
// from figure 10-13(page no.-542), we obtain 
NTU_max = 1.16;
// so that 
A1 = NTU_max*Cmin/(U*2);// [square meter]
printf("we have find that %f square meter of area is required for each of small exchangers, or a total of %f square meter",A1,2*A1);
printf("\n\n the area required in the one larger exchanger is %f square meter",A);
printf("\n\n the cost per unit area is greater so that the most economical choice would be the single larger exchanger ");