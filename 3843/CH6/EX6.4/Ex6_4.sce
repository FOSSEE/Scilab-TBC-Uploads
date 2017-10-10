// Example 6_4
clc;funcprot(0);
// Given data
P_1=1200;// kPa
T_1=350;// °C
P_2=140;// kPa

// Calculation
P_r1=((1/20)*(20.64-18.36))+18.36;// The relative pressure at state 1
P_r2=P_r1*(P_2/P_1);//  The relative pressure at state 2
T_2=(((2.182-2.149)/(2.626-2.149))*(360-340))+340;// K
u_1=((3/20)*(465.5-450.1))+450.1;// kJ/kg
u_2=(((2.182-2.149)/(2.626-2.149))*(257.2-242.8))+242.8;// kJ/kg
w=u_1-u_2;// The work done by the gases in kJ/kg
printf("\nThe work done by the gases,w=%3.1f kJ/kg",w);
