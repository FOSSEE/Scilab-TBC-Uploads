clear;
//clc();

// Example 9.6
// Page: 225
printf("Example-9.6  Page no.-225\n\n");

//***Data***//
P_1 = 10;//[atm]
x_a_1  = 0.1238;// mole fraction of ethanol at 10 atm pressure
Temp = 273.15+85.3;//[K]
R = 0.08206;//[(L*atm)/(mol*K)]
P_0 = 1;//[atm]
// so
delta_P = (P_1-P_0);//[atm]
// Molecular weight of ethanol and water are respectively
M_ethanol = 46;//[g/mol]
M_water = 18;//[g/mol]
// Now changing the mol fraction of ethanol in the wt fraction 
m_a_1 = x_a_1*M_ethanol/(x_a_1*M_ethanol+(1-x_a_1)*M_water);
// From example 8.9(page 188) we know that at this T and 1 atm and x_a_0, activity coefficient for ethanol 
y_ethanol_0 = 2.9235;
// Now from figure 6.15(page 129), we read that at 20C and m_a_1 mass fraction ethanol ,
v_ethanol_1 = 1.16;//[cm^(3)/g]
// Similarily for mass fraction corresponding to mole fraction x_a_1 
v_ethanol_0 = 1.27;//[cm^(3)/]
// Difference of thes etwo values is 
v = v_ethanol_1-v_ethanol_0;//[cm^(3)/g]
v = v*46;//[L/g]
// If we assume that this value is more or less independent of temperature, we  can use it as the corresponding value at 85.3C, and compute 
// From equation 7.31(page 225)
// d(log(y_i))/dP = (v_1-v_0)/(R*T);  at constant temperature and mole fraction 
// Let d(log(y_i))/dP = C, then
C = (v_ethanol_1-v_ethanol_0)/(R*Temp);
// Also we can have 
// delta_log(y_i) = (d(log(y_i))/dP)*delta_P
// or 
// delta_log(y_i) = C*delta_P
// and delta_log(y_i) = log(y_ehtanol_1)-log(y_ethanol_0)
// So
y_ethanol_1 = exp(log(y_ethanol_0)+C*delta_P);
printf("The activity coefficient of ethanol in the solution at 10 atm pressure is %f",y_ethanol_1);
