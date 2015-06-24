
// Variable Declaration
r = 25.0       //Resistance/phase(ohm)
x = 90.0       //Reactance/phase(ohm)
V_S = 145.0    //Sending end voltage(kV)
V_R = 132.0    //Receiving end voltage(kV)
P_R_1 = 0      //Power(MW)
P_R_2 = 50.0   //Power(MW)

// Calculation Section
A = 1.0*exp(%i*0*%pi/180)       //Line constant
B = complex(r,x)                          //Line constant(ohm)
a = phasemag(A)*%pi/180                        //Phase angle of A(radian)
b = phasemag(B)*%pi/180                        //Phase angle of B(radian)

cos_b_delta_1 = (V_R/V_S)*cos(b-a)
delta_1 = b - acos(cos_b_delta_1)
Q_R_1 = (V_R*V_S/abs(B))*sin(b-delta_1) - (abs(A)*V_R**2/abs(B))*sin(b-a)

cos_b_delta_2 = (P_R_2*abs(B)/(V_R*V_S))+(abs(A)*V_R/V_S)*cos(b-a)
delta_2 = (b - acos(cos_b_delta_2))
Q_R_2 = (V_R*V_S/abs(B))*sin(b-delta_2)-(abs(A)*V_R**2/abs(B))*sin(b-a) //Reactive power available at receiving end(MVAR)
Q_S_2 = Q_R_1 + Q_R_2                                                             //Reactive power to be supplied by equipment(MVAR)
pf = cos(atan(Q_S_2/P_R_2))                                             //Power factor

// Result Section
printf('Rating of device = %.2f MVAR' ,Q_R_1)
printf('Power factor = %.2f lagging' ,pf)
