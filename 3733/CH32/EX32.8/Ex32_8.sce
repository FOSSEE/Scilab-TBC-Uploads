// Example 32_8
clc;funcprot(0);
//Given data
L_12=500;// Load in kW
L_3=200;// Load in kW
CV=40000;//Calorific value in kJ/kg
Fc=0.25;// Fuel consumption in kg/kWh
CF=4000;// Cost of fuel in rupees
Cf=50;// Plant capacity factor in %
d=30;// Number of days 

//Calculation
P_c=(2*L_12)+L_3;// Plant capacity in kW
t=d*24;// Time in hours during the month
E=(Cf/100)*P_c*t;// Energy generated during the month in kWh/month
Fc_p=(Fc*E);//Fuel cost per month in kg
Fc_p=(Fc_p)/1000;// tonnes
FC=CF*Fc_p;// rupees/month
Ce=FC/E;// Cost of energy in Rs./kWhr
O=E*3600;// Output
I=Fc_p*1000*CV;// Input
n_o=(O/I)*100;// Over all efficiency
printf('\nThe over all efficiency of the plant=%0.0f percentage',n_o);
