// Example 4_6
clc;funcprot(0);
// Given data
T_1=300;// °C
T_2=700;// °C
m=3;// kg

// Calculation
// (a)
delH=m*integrate('(2.07+((T-400)/1480))','T',T_1,T_2);
printf("\n(a)The enthalpy change,delH=%4.0f kJ",delH);
// From steam tables
h_1=3073;// kJ/kg
h_2=3928;// kJ/kg
delH=m*(h_2-h_1);// kJ/kg
printf("\n   Using the values from steam tables,the enthalpy change,delH=%4.0f kJ",delH);
// (b)
delT=T_2-T_1;// °C
c_pav=(m*integrate('(2.07+((T-400)/1480))','T',T_1,T_2))/(m*delT);// kJ/kg.°C
printf("\n(b)The average value of c_p=%1.2f kJ/kg.°C",c_pav);
// Using the values from steam tables
c_pav=(h_2-h_1)/delT;// kJ/kg.°C
printf("\n   Using the values from steam tables,the average value of c_p=%1.2f kJ/kg.°C",c_pav);
