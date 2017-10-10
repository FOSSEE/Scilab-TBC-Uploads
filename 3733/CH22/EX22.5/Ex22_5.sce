// Example 22_5
clc;funcprot(0);
//Given data
p_1=100;// bar
T_1=500;// °C
p_2=8.5;// bar
p_3=p_2-0.5;// bar
p_4=0.05;// bar
n_t=80;// The isentropic efficiency of the turbine in %
n_lt=85;// The isentropic efficiency of lower stage of the turbine in %

//Calculation
//From h-s chart:
h_1=3377;// kJ/kg
h_2a=2750;// kJ/kg
h_3=3478;// kJ/kg
h_4a=2738;// kJ/kg
// The isentropic efficiency of the expansion 1-2 is 80% as given in problem
h_2=h_1-((n_t/100)*(h_1-h_2a));// kJ/kg
// The isentropic efficiency of the expansion 3-4 is 85% as given in problem
h_4=h_3-((n_lt/100)*(h_3-h_4a));// kJ/kg
//From steam tables ,
h_f5=137;// kJ/kg
n_th1=(((h_1-h_2)+(h_3-h_4))/((h_1-h_f5)+(h_3-h_2)))*100;// The efficiency of the cycle in %
// From h-s diagram
h_6a=2305;// kJ/kg
// The isentropic efficiency of the expansion 2-6 is 75% as given in problem
n_lt=75;//The isentropic efficiency of the turbine in %
h_6=h_2-((n_lt/100)*(h_2-h_6a));// kJ/kg
n_th2=(((h_1-h_2)+(h_2-h_6))/(h_1-h_f5))*100;// The thermal efficiency of the cycle without reheating in %
printf('\nThe thermal efficiency of the cycle with reheating=%0.1f percentage \nThe thermal efficiency of the cycle without reheating=%0.1f percentage',n_th1,n_th2);
// The answer is bit different due to calculation error in the book

