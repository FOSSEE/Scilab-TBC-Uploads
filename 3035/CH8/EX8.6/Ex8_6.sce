// Variable Declaration
X_s = 1.1       //Synchronous reactance of generator(p.u)
V_b = 1.0       //Terminal voltage of generator=voltage of infinite bus(p.u)
E = 1.25        //Excitation emf of finite machine(p.u)
P_G = 0.3       //Active power output(p.u)
dec = 0.25      //Excitation is decreased

// Calculation Section
sin_delta = P_G*X_s/(E*V_b)
delta = asin(sin_delta)                //Power angle(radian)
Q_G = V_b/X_s*(E*cos(delta)-V_b)       //Reactive power output(p.u)

E_n = (1-dec)*E                             //New excitation emf of finite machine(p.u)
P_Gn = P_G                                  //New active power output(p.u)
sin_delta_n = P_G*X_s/(E_n*V_b)
delta_n = asin(sin_delta_n)            //New power angle(radian)
Q_Gn = V_b/X_s*(E_n*cos(delta_n)-V_b)  //New reactive power output(p.u)


// Result Section
printf('Case(a) :')
printf('Power angle = %.2f°' ,delta*180/%pi)
printf('Reactive power output , Q_G = %.3f p.u' ,Q_G)
printf('\nCase(b) :')
printf('Active power if excitation is decreased , P_Gn = %.1f p.u' ,P_Gn)
printf('Reactive power if excitation is decreased , Q_Gn = %.3f p.u' ,Q_Gn)
printf('Power angle if excitation is decreased = %.2f°' ,delta_n*180/%pi)
