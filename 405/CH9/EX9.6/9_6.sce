clear;
clc;
printf("\t\t\tExample Number 9.6\n\n\n");
// heat-flux comparisons 
// Example 9.6(page no.-509)
// solution

Tw = 200;// [degree celsius] water temperature 
L = 0.08;// [m] length of solid copper bar
dT = 100;// [degree celsius] temperature differential in copper bar
//using the data of table 9-4(page no.-508)
// the heat flux per unit area is expressed as q_by_A = -k*del_T/dx
// from table A-2(page no.-) the thermal conductivity of copper is 
k = 374;// [W/m degree celsius]
q_by_A = -k*(-dT)/L;// [W/square meter]
// from table 9-4(page no.-508) the typical axial heat flux for a water heat flux for a water heat pipe is 
q_by_A_axial = 0.67;// [kW/csquare meter]
q_by_A = q_by_A/(1000*10^(4));// [kW/csquare meter]
printf("thus the heat transfers more than %f times the heat of a pure copper rod with a substantial temperature gradient.",q_by_A_axial/q_by_A);
