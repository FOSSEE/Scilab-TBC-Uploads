// Example 22_21
clc;funcprot(0);
//Given data
p_1=30;// bar
T_1=550;// °C
p_2=2.6;// bar
p_3=0.2;// bar
m_s=30;// kg/sec

//Calculation
//From h-s chart:
h_1=3580;// kJ/kg
h_2=2870;// kJ/kg
h_3=2440;// kJ/kg
// From steam tables
h_f2=541;// kJ/kg
h_f3=251.5;// kJ/kg
function[X]=mass(y)
    X(1)= (y(1)*(h_2-h_f2))-((1-y(1))*(h_f2-h_f3));
endfunction
y=[0.1];
z=fsolve(y,mass);
m=z(1);// kg
P=m_s*((h_1-h_2)+((1-m)*(h_2-h_3)))/1000;// MW
n_r=((h_1-h_3)/(h_1-h_f3))*100;// The efficiency of the rankine cycle in %
n_b=(((h_1-h_2)+((1-m)*(h_2-h_3)))/(h_1-h_f2))*100;
printf('\nThe power generating capacityof the plant=%0.2f MW \nThe efficiency of the rankine cycle=%0.0f percentage \nThe efficiency of the cycle with bled heating=%0.0f percentage',P,n_r,n_b);
// The answer vary due to round off error
