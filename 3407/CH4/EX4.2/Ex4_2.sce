clear all;
clc;
funcprot(0);

//given data
alpha2 = 70;//in deg
p01 = 311;//in kPa
T01 = 850;//in degC
p3 = 100;//in kPa
eff_tot_stat = 0.87;
U = 500;//in m/s
Cp = 1.148;//in kJ/(kgC)
gamma = 1.33;

//Calculations
delW = eff_tot_stat*Cp*(T01+273.15)*(1-(p3/p01)^((gamma-1)/gamma));//specific work
cy2 = delW*1000/U;//in m/s
c2 = cy2/sin(%pi*alpha2/180);//in m/s
T2 = (T01+273.15) - 0.5*(c2^2)/(Cp*1000);//Nozzle exit temperature in K
M2 = c2/sqrt(gamma*287*T2);//Nozzle exit mach number
cx = c2*cos(%pi*alpha2/180);//axial velocity in m/s
eff_tot_tot = 1/((1/eff_tot_stat)-((cx^2)/(2*1000*delW)));//Total to total efficiency
R = 1 - 0.5*(cx/U)*tan(%pi*alpha2/180);//stage reaction

//results
printf('(i) The specific work done = %d kJ/kg.\n',delW);
printf('(ii) The Mach number leaving the nozzle = %.2f.\n',M2);
printf('(iii) The axial velocity = %d m/s.\n',cx);
printf('(iv) The total-to-total efficiency = %.2f.\n',eff_tot_tot);
printf('(v) The stage reaction = %.3f.\n',R);


//there are small errors in the answers given in the book
