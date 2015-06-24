// Variable Declaration
X_s = 1.05      //Synchronous reactance of generator(p.u)
V_b = 0.95      //Terminal voltage of generator=voltage of infinite bus(p.u)
X_L = 0.1       //Reactance of link(p.u)
E = 1.2         //Excitation emf of finite machine(p.u)
P_G = 0.15      //Active power output(p.u)
inc = 1         //Turbine torque increased

// Calculation Section
sin_delta = P_G*(X_s+X_L)/(E*V_b)
delta = asin(sin_delta)                    //Power angle(radian)
Q_G = V_b/(X_s+X_L)*(E*cos(delta)-V_b)     //Reactive power output(p.u)

P_Gn = (1+inc)*P_G                              //New active power output(p.u)
sin_delta_n = P_Gn*(X_s+X_L)/(E*V_b)
delta_n = asin(sin_delta_n)                //Power angle(radian)
Q_Gn = V_b/(X_s+X_L)*(E*cos(delta_n)-V_b)  //Reactive power output(p.u)
P_change = (P_Gn-P_G)/P_G*100                   //Change in active power output(%)
Q_change = (Q_Gn-Q_G)/Q_G*100                   //Change in reactive power output(%)

// Result Section
printf('Change in active power supplied by generator = %.f percent' ,P_change)
printf('Change in reactive power supplied by generator = %.2f percent' ,Q_change)
