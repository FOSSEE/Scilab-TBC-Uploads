// Variable Declaration
X_s = 6.0       //Synchronous reactance of alternator(ohms/phase)
pf = 0.8        //Lagging power factor
P_G = 5.0       //Power delivered(MW)
V = 11.0        //Voltage of infinite bus(kV)

// Calculation Section
delta = acos(pf)
I = P_G*1000/(3**0.5*V*pf)*(pf - complex(0,sin(delta)))      //Alternator current(A)
V_b = V*10**3/3**0.5                                              //Voltage of infinite bus(V/phase)
E = complex(7531.79669352,1574.59164324)                           //Initial excitation voltage(V)
pf_n = 1.0                                                        //New power factor
P_Gn = P_G                                                        //New power delivered(MW)
I_n = P_Gn*1000/(3**0.5*V*pf_n)                                   //Alternator current(A)
E_n = complex(V_b,I_n*X_s)                                        //New excitation voltage(V)
excitation_change = (abs(E)-abs(E_n))/abs(E)*100                  //Percentage change in excitation(%)

// Result Section
printf('Percentage change in excitation = %.2f percent' ,excitation_change)
