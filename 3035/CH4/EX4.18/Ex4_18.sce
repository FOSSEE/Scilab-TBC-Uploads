
// Variable Declaration
A = 0.9*exp(%i*1.0*%pi/180)     //Line constant
B = 143.0*exp(%i*84.5*%pi/180)  //Line constant(ohm)
V_R = 220.0                               //Receiving end voltage(kV)
V_S = 240.0                               //Sending end voltage(kV)
P = 100.0                                 //Power(MVA)
pf = 0.8                                  //Power factor lagging

a = phasemag(A)*%pi/180                        //Phase angle of A(radian)
b = phasemag(B)*%pi/180                        //Phase angle of B(radian)

// Calculation Section
P_R = P * pf                                                                    //Active power at receiving end(MW)
cos_b_delta = (P_R*abs(B)/(V_R*V_S))+(abs(A)*V_R/V_S)*cos(b-a)             //cos(b-delta)[in radians]
delta_1 = (b - acos(cos_b_delta))
Q_R = (V_R*V_S/abs(B))*sin(b-delta_1)-(abs(A)*V_R**2/abs(B))*sin(b-a) //Reactive power at receiving end(MVAR)
P_Re = P *(1-pf**2)**0.5                                                        //Reactive power(MVAR)
rating = P_Re - Q_R                                                             //Rating of phase modifier(MVAR)

delta_2 = b                                                                     //Maximum power is received when delta = b
P_Rmax = (V_R*V_S/abs(B))-(abs(A)*V_R**2/abs(B))*cos(b-a)                  //Maximum power at receiving end(MW)
Q_R = -(abs(A/B)*V_R**2)*sin(b-a)                                          //Reactive power at receive end(MVAR)
P_S = (V_S**2*abs(A/B))*cos(b-a)-(V_S*V_R/abs(B))*cos(b+delta_2)      //Sending end power(MW)
n_line = (P_Rmax/P_S)*100                                                       //Line efficiency(%)

// Result Section
printf('Case(a) :')
printf('Rating of phase modifier = %.3f MVAR' ,rating)
printf('Power angle , delta = %.2f°' ,(delta_1*180/%pi))
printf('\nCase(b) :')
printf('Maximum power at receive end , P_Rmax = %.2f MW' ,P_Rmax)
printf('Reactive power available , Q_R = %.2f MVAR' ,Q_R)
printf('Line efficiency = %.2f percent' ,n_line)
