// Example 22_9
clc;funcprot(0);
//Given data
p_1=100;// bar
p_4=0.035;// bar 
T_1=500;// bar

//Calculation
// From the (Mollier) chart:
h_1=3373;// kJ/kg
h_2=2778;// kJ/kg
h_3=3478;// kJ/kg
h_4=2322;// kJ/kg
x_4=0.907;
// From steam tables
h_f5=112;// kJ/kg
W_p=10;// Pump work as calculated in kJ/kg 
n=(((h_1-h_2)+(h_3-h_4)-W_p)/((h_1-h_f5)+(h_3-h_2)));// Efficiency of the cycle
printf('\n The efficiency of the cycle=%0.2f(or)%0.0f percentage',n,n*100);
