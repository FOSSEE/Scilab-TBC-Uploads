
// Variable Declaration
A = 0.96*exp(%i*1.0*%pi/180)    //Line constant
B = 100.0*exp(%i*83.0*%pi/180)  //Line constant(ohm)
V_R = 110.0                               //Receiving end voltage(kV)
V_S = 110.0                               //Sending end voltage(kV)
pf = 0.8                                  //Power factor lagging
delta = 15*%pi/180                    //Power angle(radians)

// Calculation Section
a = phasemag(A)*%pi/180                        //Phase angle of A(radian)
b = phasemag(B)*%pi/180                        //Phase angle of B(radian)

P_R = (V_R*V_S/abs(B))*cos(b-delta) - (abs(A/B)*V_R**2)*cos(b-a) //Active power at receiving end(MW)
Q_RL = P_R*tan(acos(pf))                                         //Reactive power demanded by load(MVAR)

Q_R = (V_R*V_S/abs(B))*sin(b-delta) - (abs(A/B)*V_R**2)*sin(b-a) //Reactive power(MVAR)
rating = Q_RL - Q_R                                                        //Rating of device(MVAR)

P_S = (V_S**2*abs(A/B))*cos(b-a) - (V_R*V_S/abs(B))*cos(b+delta) //Sending end active power(MW)
n_line = (P_R/P_S)*100                                                     //Efficiency of line(%)

Q_S = (V_S**2*abs(A/B))*sin(b-a) - (V_R*V_S/abs(B))*sin(b+delta) //Sending end reactive power(MVAR)

// Result Section
printf('(i)  Active power demanded by load , P_R = %.2f MW' ,P_R)
printf('     Reactive power demanded by load , Q_RL = %.2f MVAR' ,Q_RL)
printf('(ii) Rating of the device , Q_R = %.2f MVAR' ,rating)
printf('(iii)Efficiency of line = %.2f percent' ,n_line)
printf('(iv) Reactive power supplied by source and line , Q_S = %.2f MVAR' ,Q_S)
