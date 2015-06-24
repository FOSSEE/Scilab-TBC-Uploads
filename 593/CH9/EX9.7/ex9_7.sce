clear;
//clc();

// Example 9.7
// Page: 226
printf("Example-9.7  Page no.-226\n\n");

//***Data***//
x_ethanol = 0.1238;
Temp_1 = 273.15+85.3;//[K]
P = 1;//[atm]
Temp_2 = 273.15+70;//[K]
R = 8.314;//[j/(mol*K)]
// From example 8.9, at temperature 85.3C the activity coefficient is 
y_ethanol_1 = 2.9235;
// From figure 9.5[4] (page 227) as reported in the book, we read the value of (h_i_average-h_i_0) at temperatures 90C and 70C for ethanol.
// which are respectively
delta_h_2 = 0.2;//[kJ/mol]
delta_h_1 = 1.0;//[kJ/mol]
// Taking the average of these two values we have 
delta_h_average = (delta_h_1+delta_h_1)/2*1000;//[J/mol]
// From the equation 7.32 (page 225) reported in the book 
// d(log(y_i))/dT = (h_i_average-h_i_0)/(R*T^(2)); at constant pressure and mole fraction
// So
// integrate(d(log(y_i)) = integrate((h_i_average-h_i_0)/(R*T^(2)))*dT
// it can be taken approximately as 
// integrate(d(log(y_i)) = ((h_i_average-h_i_0)_average/R)*integrate(1/T^(2))*dT
// we have integrate(d(log(y_i)) = log(y_ethanol_2/y_ethanol_1)
// So
y_ethanol_2 = y_ethanol_1*exp((delta_h_average/R)*integrate('1/T^(2)','T',Temp_1,Temp_2));
printf("The activity coefficient for ethanol in the solution at 70 deg C and 1 atm is %f",y_ethanol_2);

