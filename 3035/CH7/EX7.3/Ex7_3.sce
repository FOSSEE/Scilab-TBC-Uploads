
// Variable Declaration
V = 400.0       //Voltage supplied(V)
f = 50.0        //Frequency(Hz)
L = 300.0       //Length of line(m)
I_1 = 50.0      //Current at 100 m from feeding point(A)
pf_1 = 0.8      //Power factor at 100 m from feeding point
L_1 = 100.0     //Length of line upto feeding point(m)
I_2 = 25.0      //Current at 100 m from feeding point(A)
pf_2 = 0.78     //Power factor at 100 m from feeding point
L_2 = 200.0     //Length of line from feeding point to far end(m)
i = 0.2         //Distributed load current(A/metre)
v_drop = 15.0   //Permissible voltage drop

// Calculation Section
theta_1 = acos(pf_1)               //Power factor angle for 50 A(radians)
theta_2 = acos(pf_2)               //Power factor angle for 25 A(radians)

r_f = 0.734*10**-3                      //Resistance(ohm/m)
x_f = 0.336*10**-3                      //Reactance(ohm/m)
V_con_f = I_1*L_1*(r_f*pf_1+x_f*sin(theta_1))+I_2*L*(r_f*pf_2+x_f*sin(theta_2)) //Voltage drop at B due to concentrated loading(V)
V_dis_f = 0.5*i*r_f*(L_1+L_2)**2        //Voltage drop at B due to distributed loading(V)
V_f = V_con_f+V_dis_f                   //Total voltage drop(V)

r_r = 0.587*10**-3                      //Resistance(ohm/m)
x_r = 0.333*10**-3                      //Reactance(ohm/m)
V_con_r = I_1*L_1*(r_r*pf_1+x_r*sin(theta_1))+I_2*L*(r_r*pf_2+x_r*sin(theta_2)) //Voltage drop at B due to concentrated loading(V)
V_dis_r = 0.5*i*r_r*(L_1+L_2)**2        //Voltage drop at B due to distributed loading(V)
V_r = V_con_r+V_dis_r                   //Total voltage drop(V)

// Result Section
if(V_f < v_drop) then
    printf('Ferret ACSR conductors of size 7/3.00 mm having an overall conductor diameter of 9.0 mm is to be used')
    printf('Total voltage drop = %.2f V, which is within limit' ,V_f)
else
    printf('Rabbit ACSR conductors of size 7/3.35 mm having an overall conductor diameter of 10.0 mm is to be used')
    printf('Total voltage drop = %.2f V, which is within limit' ,V_r)
end
printf('\nNOTE : ERROR : In distributed load : current is 0.2 A/meter and not 0.25 A/meter as given in problem statement')
