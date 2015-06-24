// Variable Declaration
n = 4        //Number of disc
v_2 = 13.2   //Voltage across second unit(kV)
v_3 = 18.0   //Voltage across third unit(kV)

// Calculation Section
m = 0.198                       //Obtained by solving the quadratic equation
a_1 = 1
a_2 = 1+m
a_3 = m*(a_1+a_2)+a_2
a_4 = m*(a_1+a_2+a_3)+a_3
v_1 = v_2/a_2                   //Voltage across first unit(kV)
v_4 = a_4*v_1                   //Voltage across second unit(kV)
V = v_1+v_2+v_3+v_4             //Conductor voltage(kV)
efficiency = V/(n*v_4)*100      //String efficiency(%)

// Result Section
printf('Conductor voltage with respect to the cross-arm , V = %.2f kV' ,V)
printf('String efficiency = %.2f percent' ,efficiency)
