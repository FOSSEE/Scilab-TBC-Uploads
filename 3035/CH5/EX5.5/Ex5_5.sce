
// Variable Declaration
n = 3       //Number of discs
m = 0.1     //capacitance of each link pin to self capacitance
V = 33.0    //Voltage(kV)

// Calculation Section
a_1 = 1
a_2 = (1 + m)*a_1
a_3 = m*(a_1 + a_2) + a_2
v_1 = V/(a_1 + a_2 + a_3)   //Voltage across top unit(kV)
v_2 = a_2 * v_1             //Voltage across middle unit(kV)
v_3 = a_3 * v_1             //Voltage across bottom unit(kV)
s_v_1 = (v_1/V)*100         //Voltage across top unit to string voltage(%)
s_v_2 = (v_2/V)*100         //Voltage across middle unit to string voltage(%)
s_v_3 = (v_3/V)*100         //Voltage across bottom unit to string voltage(%)

efficiency = V*100/(3*v_3)  //String efficiency(%)

// Result Section
printf('Case(i) :')
printf('Voltage across top unit , v_1 = %.3f kV' ,v_1)
printf('Voltage across middle unit , v_2 = %.3f kV' ,v_2)
printf('Voltage across bottom unit , v_3 = %.3f kV' ,v_3)
printf('Voltage across top unit as a percentage of string voltage , v_1/V = %.1f percent' ,s_v_1)
printf('Voltage across middle unit as a percentage of string voltage , v_2/V = %.1f percent' ,s_v_2)
printf('Voltage across bottom unit as a percentage of string voltage , v_3/V = %.1f percent' ,s_v_3)
printf('\nCase(ii) :')
printf('String efficiency = %.2f percent' ,efficiency)
