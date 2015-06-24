// Variable Declaration
n = 8       //Number of discs
m = 1.0/6   //capacitance of each link pin to self capacitance
V = 30.0    //Voltage(kV)

// Calculation Section
a_1 = 1
a_2 = (1+m)*a_1
a_3 = m*(a_1+a_2)+a_2
a_4 = m*(a_1+a_2+a_3)+a_3
a_5 = m*(a_1+a_2+a_3+a_4)+a_4
a_6 = m*(a_1+a_2+a_3+a_4+a_5)+a_5
a_7 = m*(a_1+a_2+a_3+a_4+a_5+a_6)+a_6
a_8 = m*(a_1+a_2+a_3+a_4+a_5+a_6+a_7)+a_7
v_1 = V/(a_1+a_2+a_3+a_4+a_5+a_6+a_7+a_8)    //Voltage across unit 1(kV)
v_2 = a_2*v_1                                //Voltage across unit 2(kV)
v_3 = a_3*v_1                                //Voltage across unit 3(kV)
v_4 = a_4*v_1                                //Voltage across unit 4(kV)
v_5 = a_5*v_1                                //Voltage across unit 5(kV)
v_6 = a_6*v_1                                //Voltage across unit 6(kV)
v_7 = a_7*v_1                                //Voltage across unit 7(kV)
v_8 = a_8*v_1                                //Voltage across unit 8(kV)
s_v_1 = v_1/V*100                            //Voltage across unit 1 as a % of V
s_v_2 = v_2/V*100                            //Voltage across unit 2 as a % of V
s_v_3 = v_3/V*100                            //Voltage across unit 3 as a % of V
s_v_4 = v_4/V*100                            //Voltage across unit 4 as a % of V
s_v_5 = v_5/V*100                            //Voltage across unit 5 as a % of V
s_v_6 = v_6/V*100                            //Voltage across unit 6 as a % of V
s_v_7 = v_7/V*100                            //Voltage across unit 7 as a % of V
s_v_8 = v_8/V*100                            //Voltage across unit 8 as a % of V

V_2 = V*100/s_v_8
V_sys = (3**0.5)*V_2                         //Permissible system voltage(kV)

// Result Section
printf('Case(i) :')
printf('Unit number                          1      2      3      4      5       6       7       8\n')
printf('Percentage of conductor voltage    %.2f   %.2f   %.2f   %.2f   %.2f   %.2f   %.2f   %.2f' ,s_v_1,s_v_2,s_v_3,s_v_4,s_v_5,s_v_6,s_v_7,s_v_8)
printf('\nCase(ii) :')
printf('System voltage at which this string can be used = %.2f kV' ,V_sys)
