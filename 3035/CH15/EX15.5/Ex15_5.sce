
// Variable Declaration
P_i = 0.75      //Pre-fault power(p.u)
f = 50.0        //Frequency(Hz)
H = 6.0         //Value of H for finite machine(sec)
x_G = 0.2       //Reactance of machine(p.u)
x_T = 0.1       //Reactance of transformer(p.u)
x_L = 0.4       //Reactance of line(p.u)
V = 1.0         //Voltage of infinite bus(p.u)
E = 1.0         //e.m.f of finite generator behind transient reactance(p.u)

// Calculation Section
X_T = x_G+x_T+(x_L)                           //Transfer reactance at pre-fault state(p.u)
P_m = E**2/X_T                                //Amplitude of power angle curve at pre-fault state(p.u)
delta_0 = asin(P_i/P_m)                  //Radians
delta_0a = delta_0*180/%pi
delta_cr = acos((%pi-2*delta_0)*sin(delta_0)-cos(delta_0))
delta_cra = delta_cr*180/%pi
t_cr = ((delta_cra-delta_0a)*2*H/(180*f*P_i))**0.5

// Result Section
printf('Critical clearing angle for circuit breaker at bus 1 = %.2f°' ,delta_cra)
printf('Time for circuit breaker at bus 1 ,t_cr = %.3f sec' ,t_cr)
