clear;
clc;
printf("\t\t\tExample Number 10.7\n\n\n");
// cross flow exchanger with one fluid mixed 
// Example 10.7 (page no.-537) 
// solution

m_dot = 5.2;// [kg/s] mass flow rate
T1 = 130;// [degree celsius] temperature of entering steam
T2 = 110;// [degree celsius] temperature of leaving steam
t1 = 15;// [degree celsius] temperature of entering oil
t2 = 85;// [degree celsius] temperature of leaving oil
c_oil = 1900;// [J/kg degree celsius] heat capacity of oil
c_steam = 1860;// [J/kg degree celsius] heat capacity of steam
U = 275;// [W/square meter degree celsius] overall heat transfer coefficient
//the total heat transfer may be obtained from an energy balance on the steam 
q = m_dot*c_steam*(T1-T2);// [W]
// we can solve for the area from equation (10-13). the value of dT_m is calculated as if the exchanger were counterflow double pipe,thus
dT_m = ((T1-t2)-(T2-t1))/log((T1-t2)/(T2-t1));// [degree celsius]
// t1,t2 is representing the unmixed fluid(oil) and T1,T2 is representing the mixed fluid(steam) so that:
// we calculate 
R = (T1-T2)/(t2-t1);
P = (t2-t1)/(T1-t1);
// consulting figure 10-11(page no.-534) we find 
F = 0.97;
// so the area is calculated from 
A = q/(U*F*dT_m);// [square meter]
printf("surface area of heat exchanger is %f square meter",A);
