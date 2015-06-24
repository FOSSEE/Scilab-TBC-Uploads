clear ;
clc;
// Example 9.2
printf('Example 9.2\n\n');
// Page no. 229
// Solution

m_CO2 = 44.0 ;//molecular wt-[g]
m_C7H16 = 100.1 ;//molecular wt-[g]
p_con = 50 ;// percentage conversion of CO2 to dry ice
amt_di = 500 ;// amount of dry ice to be produce per hour-[kg]
// By using the given equation 
amt_C7H16 = (amt_di*m_C7H16)/((p_con/100)*m_CO2*7) ;// [kg]
printf('Amount of heptane required per hour to produce 500kg dry ice per hour is  %.1f kg.\n',amt_C7H16);