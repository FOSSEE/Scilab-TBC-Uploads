
// Variable Declaration
A = 0.8*exp(%i*1.4*%pi/180)     //Line constant
B = 326.0*exp(%i*84.8*%pi/180)  //Line constant(ohm)
V_R = 220.0                               //Receiving end voltage(kV)
V_S = 220.0                               //Sending end voltage(kV)
P = 75.0                                  //Power(MVA) for case(a)
pf = 0.8                                  //Power factor lagging

a = phasemag(A)*%pi/180                        //Phase angle of A(radian)
b = phasemag(B)*%pi/180                        //Phase angle of B(radian)

// Calculation Section
P_R = P * pf                                                                        //Active power demanded by load(MW)
P_React = P *(1-pf**2)**0.5                                                         //Reactive power demanded by load(MVAR)
cos_b_delta_1 = P_R*abs(B)/(V_R*V_S) + abs(A)*cos(b-a)                         //cos(b-delta)[in radians]
delta_1 = b - acos(cos_b_delta_1)                                              //delta(radians)
Q_R_1 = (V_R*V_S/abs(B))*sin(b-delta_1) - (abs(A)*V_R**2/abs(B))*sin(b-a) //Reactive power at sending end(MVAR)
Reactive_power_1 = P_React - Q_R_1                                                  //Reactive power to be supplied by compensating equipment(MVAR)

cos_b_delta_2 = (abs(A)*V_R/V_S)*cos(b-a)                                      //cos(b-delta)[in radians]
delta_2 = b - acos(cos_b_delta_2)                                              //delta(radians)
Q_R_2 = (V_R*V_S/abs(B))*sin(b-delta_2) - (abs(A)*V_R**2/abs(B))*sin(b-a) //Reactive power at sending end(MVAR)
Reactive_power_2 = Q_R_2                                                            //Reactive power to be absorbed by compensating equipment(MVAR)

// Result Section
printf('(a) Reactive VARs to be supplied by compensating equipment = %.2f MVAR' ,Reactive_power_1)
printf('(b) Reactive VARs to be absorbed by compensating equipment = %.2f MVAR' ,Reactive_power_2)
