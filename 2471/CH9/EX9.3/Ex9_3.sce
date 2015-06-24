clear ;
clc;
// Example 9.3
printf('Example 9.3\n\n');
printf('Page No. 256\n\n');

//given
N_1 = 1.5;// Ventilation rate in the production area (air changes per hour)
N_2 = 1.0;//  Ventilation rate in the office suite (air changes per hour)

//From example 9.1
V_P = 6000;// Voulme of production area in m^3
V_O = 750;// Voulme of office suite in m^3
T1 = 21;// Temperature difference in degree celcius
T2 = -3;// Temperature difference in degree celcius
T_P = 18;// Temperature difference in degree celcius
F_loss = 74.4*10^3;// Total fabric loss in W

// As Q_vent = 0.33 * N * V * (T1 - T2)
Q_vent_P = 0.33 * N_1 * V_P * (T_P - T2);// Ventilation loss in production area in W
Q_vent_O = 0.33 * N_2 * V_O * (T1 - T2);// Ventilation loss in office suite in W
V_loss = Q_vent_P + Q_vent_O;// Total ventilation loss in W
T_loss = F_loss + V_loss;// Total heat loss in W
p = (V_loss/T_loss)*100;
printf('percentage of ventilation loss is %.0f percent',p)
