// Example 22_6
clc;funcprot(0);
//Given data
p_1=215;// bar
T_1=500;// °C
p_2=40;// bar
T_2=280;// °C
p_3=p_2-1;// bar
p_4=8;// bar
T_4=270;//°C
p_5=p_4-0.5;// bar
p_6=0.07;// bar
m=10;// The flow of steam in kg/sec

//Calculation
// From h-s diagram
h_1=3234;// kJ/kg
h_2a=2822;// kJ/kg
h_2=2910;// kJ/kg
h_3=3435;// kJ/kg
h_4a=2977;// kJ/kg
h_4=2998;// kJ/kg
h_5=3473;// kJ/kg
h_6a=2444;// kJ/kg
h_6=2578;// kJ/kg
//From steam tables,
h_f7=162;// kJ/kg
W=(h_1-h_2)+(h_3-h_4)+(h_5-h_6);// Work done per kg of steam kJ/kg
Q=(h_1-h_f7)+(h_3-h_2)+(h_5-h_4);// Heat supplied per kg of steam kJ/kg
n_th=(W/Q)*100;//The thermal efficiency of the cycle in %
P=(W*m);// Power developed by the plant in kW
n_i1=((h_1-h_2)/(h_1-h_2a))*100;//Isentropic efficiency of the first stage in %
n_i2=((h_3-h_4)/(h_3-h_4a))*100;//Isentropic efficiency of the second stage in %
n_i3=((h_5-h_6)/(h_5-h_6a))*100;//Isentropic efficiency of the third stage in %
printf('\n(a)The thermal efficiency of the cycle=%0.1f percentage \n   Power developed by the plant=%0.0f kW \n(b)Isentropic efficiency of the first stage=%0.1f percentage \n   Isentropic efficiency of the second stage=%0.1f percentage \n   Isentropic efficiency of the third stage=%0.0f percentage',n_th,P,n_i1,n_i2,n_i3);
