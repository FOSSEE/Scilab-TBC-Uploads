clear;
clc;
printf("\t\t\tExample Number 10.11\n\n\n");
// cross-flow exchanger with both fluid unmixed  
// Example 10.11 (page no.-547-549) 
// solution

pa = 101325;// [Pa] pressure of air
Ti = 15.55;// [degree celsius] initial temperature of air
Tf = 29.44;// [degree celsius] final temperature of air
Thw = 82.22;// [degree celsius] hot water temperature
U = 227;// [W/square meter degree celsius] overall heat transfer coefficient
S = 9.29;// [square meter] total surface area of heat exchanger
R = 287;// [] universal gas constant
Cc = 1006;// [J/kg degree celsius] specific heat of air 
Ch = 4180;// [J/kg degree celsius] specific heat of water
// the heat transfer is calculated from the energy balance on the air. first, the inlet air density is 
rho = pa/(R*(Ti+273.15));// [kg/cubic meter]
// so the mass flow of air (the cold fluid) is 
mdot_c = 2.36*rho;// [kg/s]
// the heat transfer is then 
q = mdot_c*Cc*(Tf-Ti);// [W]
// from the statement of the problem we do not know whether the air or water is the minimum fluid. a trial and error procedur must be used with figure  10-15(page no.-545) or table 10-3(page no.-543).
// we assume that the air is the minimum fluid and then check out our assumption. then
Cmin = mdot_c*Cc;// [W/degree celsius]
NTU_max = U*S/Cmin;
// and the effectiveness based on the air as the minimum fluid is 
E = (Tf-Ti)/(Thw-Ti);
// entering figure 10-15, we are unable to match these quantities with the curves. this require that the hot fluid be the minimum. we must therefore assume values for the water flow rate until we are able to match the performance as given by figure 10-15 or table 10-3. we first note that
Cmax = mdot_c*Cc;// [W/degree celsius]           (a)
// NTU_max = U*S/Cmin;                            (b)
// E = dT_h/(Thw-Ti)                             (c)
// dT_h = q/Cmin                                 (d)

// now we assume different values for Cmin abd calculate different-different values for NTU_max, dT_h, and E

// for 
Cmin_by_Cmax1 = 0.5;
Cmin1 = Cmin_by_Cmax1*Cmax;// [W/degree celsius]
NTU_max1 = U*S/Cmin1;
dT_h1 = q/Cmin1;// [degree celsius]
E1_c1 = dT_h1/(Thw-Ti);// calculated
E1_t1 = 0.65;// from table 

// for 
Cmin_by_Cmax2 = 0.25;
Cmin2 = Cmin_by_Cmax2*Cmax;// [W/degree celsius]
NTU_max2 = U*S/Cmin2;
dT_h2 = q/Cmin2;// [degree celsius]
E1_c2 = dT_h2/(Thw-Ti);// calculated
E1_t2 = 0.89;// from table 

// for 
Cmin_by_Cmax3 = 0.22;
Cmin3 = Cmin_by_Cmax3*Cmax;// [W/degree celsius]
NTU_max3 = U*S/Cmin3;
dT_h3 = q/Cmin3;// [degree celsius]
E1_c3 = dT_h3/(Thw-Ti);// calculated
E1_t3 = 0.92;// from table 

// we estimate the water-flow rate as about
Cmin = 660;// [W/degree celsius]
mdot_h = Cmin/Ch;// [kg/s]
// the exit water temperature is accordingly
Tw_exit = Thw-q/Cmin;// [degree celsius]
printf("the exit water temperature is %f degree celsius",Tw_exit);
printf("\n\n the heat transfer is %f kW",q/1000);