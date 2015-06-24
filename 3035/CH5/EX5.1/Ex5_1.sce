// Variable Declaration
L = 250.0           //Span(m)
d = 1.1*10**-2      //Conductor diameter(m)
w = 0.650*9.81      //Conductor weight(N/m)
bl = 7000.0         //Breaking load(kg)
sf = 2              //Safety factor
P_w_2 = 350.0       //Wind pressure(N/m^2) for case(ii)
P_w_3 = 400.0       //Wind pressure(N/m^2) for case(iii)
t_3 = 10.0**-2      //Thickness of ice covering(m) for case(iii)
w_ice = 915.0       //Ice weight(kg/m^3)

// Calculation Section
T_0 = (bl/sf)*9.81   //Allowable tension(N)

S_1 = (T_0/w)*(cosh(w*L/(2*T_0))-1)          //Sag(m)
S_1_1 = (w*L**2)/(8*T_0)                          //Sag using parabolic equation(m)

F_w_2 = P_w_2 * d                                 //Wind force(N/m)
w_t_2 = (w**2 + F_w_2**2)**0.5                    //Total force on conductor(N/m)
S_2 = (T_0/w_t_2)*(cosh(w_t_2*L/(2*T_0))-1)  //Sag(m)
S_2_2 = w_t_2*L**2/(8*T_0)                        //Sag using parabolic equation(m)
alpha_2 = atan(F_w_2/w)                      //w_t inclined vertical angle(radians)
S_v_2 = S_2 * cos(alpha_2)                   //Vertical component of sag(m)

D_3 = d + 2*t_3                                   //Diameter of conductor with ice(m)
F_w_3 = P_w_3 * D_3                               //Wind force(N/m)
w_ice_3 = (%pi/4)*(D_3**2 - d**2)*w_ice*9.81  //Weight of ice(N/m)
w_t_3 = ((w+w_ice_3)**2 + F_w_3**2)**0.5          //Total force on conductor(N/m)
S_3 = (T_0/w_t_3)*(cosh(w_t_3*L/(2*T_0))-1)  //Sag(m)
S_3_3 = w_t_3*L**2/(8*T_0)                        //Sag using parabolic equation(m)
alpha_3 = atan(F_w_3/(w+w_ice_3))            //w_t inclined vertical angle(radians)
S_v_3 = S_3 * cos(alpha_3)                   //Vertical component of sag(m)

// Result Section
printf('Case(i) :')
printf('Sag using catenary equation = %.4f m ' ,S_1)
printf('Sag using parabolic equation = %.4f m \n' ,S_1_1)
printf('Case(ii) :')
printf('Sag using catenary equation = %.4f m ' ,S_2)
printf('Sag using parabolic equation = %.4f m ' ,S_2_2)
printf('Vertical component of sag = %.2f m \n' ,S_v_2)
printf('Case(iii) :')
printf('Sag using catenary equation = %.4f m ' ,S_3)
printf('Sag using parabolic equation = %.4f m ' ,S_3_3)
printf('Vertical component of sag = %.3f m \n' ,S_v_3)
