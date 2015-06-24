// Variable Declaration
X_s = 1.0       //Synchronous reactance of generator(p.u)
V_b = 1.0       //Terminal voltage of generator=voltage of infinite bus(p.u)
P_G = 0.5       //Real power output at unity pf(p.u)


// Calculation Section
I = P_G/V_b                         //Generator current(p.u)
E = complex(V_b,I*X_s)              //Excitation emf of finite machine(p.u)
delta = phasemag(E)               //Power angle = angle b/w E & V_b(degree)

P_Gn = P_G/2                        //Real power o/p when steam i/p is halved(p.u)
sin_delta_n = P_Gn*X_s/(abs(E)*V_b)
delta_n = asin(sin_delta_n)    //New power angle(radian)
E_n = abs(E)*exp(%i*delta_n)  //Excitation emf of finite machine with new angle(p.u)
I_n = (E_n-V_b)/complex(0,X_s)      //Current when steam i/p is halved(p.u)
pf_n = cos(phasemag(I_n)*%pi/180)   //Power factor when steam i/p is halved

P_po = abs(E)*V_b/X_s               //Pull out power(p.u)

stiff_a = abs(E)*V_b/X_s*cos(phasemag(E)*%pi/180)     //Electrical stiffness in case(a) (p.u/radian)
stiff_b = abs(E)*V_b/X_s*cos(phasemag(I_n)*%pi/180)   //Electrical stiffness in case(b) (p.u/radian)

// Result Section
printf('Case(a) :')
printf('Excitation voltage of finite machine , E = %.2f∠%.2f° p.u' ,abs(E),delta)
printf('Power angle = %.2f°' ,delta)
printf('\nCase(b) :')
printf('Current if steam input is reduced to half , I_n = %.3f∠%.2f° p.u' ,abs(I_n),phasemag(I_n))
printf('Power factor if steam input is reduced to half = %.2f lagging' ,pf_n)
printf('Power angle if steam input is reduced to half = %.2f°' ,delta_n*180/%pi)
printf('\nCase(c) :')
printf('Pull out power = %.2f p.u' ,P_po)
printf('\nCase(d) :')
printf('Electrical stiffness for case(a) = %.1f p.u/radian' ,stiff_a)
printf('Electrical stiffness for case(b) = %.3f p.u/radian' ,stiff_b)
