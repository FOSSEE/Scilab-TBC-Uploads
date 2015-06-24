// Variable Declaration
V = 400.0       //Voltage of induction motor(V)
f = 50.0        //Frequency(Hz)
I = 40.0        //Line current(A)
pf_1 = 0.78     //Lagging power factor of motor
pf_2 = 0.95     //Raised lagging power factor

// Calculation Section
theta_1 = acos(pf_1)                                           //Motor power factor angle(radians)
P_act_m = 3**0.5*V*I*pf_1*10**-3                                    //Active power demand of motor(kW)
P_rea_m = P_act_m*tan(theta_1)                                 //Reactive power demand of motor(kVAR)
theta_2 = acos(pf_2)                                           //Improved power factor angle(radians)
P_act_l = 3**0.5*V*I*pf_1*10**-3                                    //Active power supplied by line(kW)
P_rea_l = P_act_m*tan(theta_2)                                 //Reactive power supplied by line to motor(kVAR)
rating = P_rea_m - P_rea_l                                          //kVAR rating of capacitor bank(kVAR per phase)
I_C = rating*1000/(3**0.5*V)                                        //Current drawn by capacitor bank(A)
I_L = I*exp(%i*-theta_1)+I_C*exp(%i*90*%pi/180)     //Line current(A)
I_phase = I_C/3**0.5                                                //Phase current of delta connected capacitor bank(A)
C = I_phase/(V*2*%pi*f)                                         //Per phase capacitance of bank(micro-F/phase)


// Result Section
printf('kVAR rating of the bank = %.2f kVAR per phase' ,rating)
printf('Line current = %.2f∠%.2f° A' ,abs(I_L),phasemag(I_L))
printf('Per phase capacitance of the bank , C = %.2e F/phase',C)
