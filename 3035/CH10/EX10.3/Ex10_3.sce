
// Variable Declaration
P_D = 500.0     //Total load(MW)
b_1 = 15.0      //Beta value of controllable thermal plant C1
g_1 = 0.012     //Gamma value of controllable thermal plant C1
b_2 = 16.0      //Beta value of controllable thermal plant C2
g_2 = 0.018     //Gamma value of controllable thermal plant C2
b_3 = 19.0      //Beta value of controllable thermal plant C3
g_3 = 0.020     //Gamma value of controllable thermal plant C3


// Calculation Section
l = (P_D+((b_1/(2*g_1))+(b_2/(2*g_2))+(b_3/(2*g_3))))/((1/(2*g_1))+(1/(2*g_2))+(1/(2*g_3))) //Lambda value which is a Lagrange multiplier
P_G1 = (l - b_1)/(2*g_1)                //(MW)
P_G2 = (l - b_2)/(2*g_2)                //(MW)
P_G3 = (l - b_3)/(2*g_3)                //(MW)
C1 = 1500.0 + b_1*P_G1 + g_1*P_G1**2    //Fuel cost of plant C1(Rs/hr)
C2 = 2000.0 + b_2*P_G2 + g_2*P_G2**2    //Fuel cost of plant C2(Rs/hr)
C3 = 1000.0 + b_3*P_G3 + g_3*P_G3**2    //Fuel cost of plant C3(Rs/hr)
C = C1 + C2 + C3                        //Total fuel cost(Rs/hr)


// Result Section
printf('Value of λ from equation(10.14) = %.3f' ,l)
printf('Optimal scheduling of thermal plant C1 = %.2f MW' ,P_G1)
printf('Optimal scheduling of thermal plant C2 = %.2f MW' ,P_G2)
printf('Optimal scheduling of thermal plant C3 = %.2f MW' ,P_G3)
printf('Total cost , C = Rs %.2f/hr' ,C)
