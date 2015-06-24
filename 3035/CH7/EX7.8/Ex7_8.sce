// Variable Declaration
V = 400.0       //Voltage(V)
f = 50.0        //Frequency(Hz)
HP_1 = 75.0     //Power(H.P)
HP_2 = 25.0     //Power(H.P)
HP_3 = 10.0     //Power(H.P)
pf_1 = 0.75     //Power factor at 3/4 load
pf_2 = 0.78     //Power factor at 4/5 load
pf_3 = 0.8      //Power factor at full load
pf_4 = 0.9      //Lagging power factor improved
pf_5 = 0.74     //Power factor of 2nd motor at 2/3 of full load
pf_6 = 0.8      //Power factor of 3rd motor at full load

// Calculation Section
theta_1 = acos(pf_1)
theta_2 = acos(pf_2)
theta_3 = acos(pf_3)
S_1P = (0.75*HP_1*746*10**-3/pf_1)*exp(%i*theta_1)    //kVA demanded by first motor(kVA)
S_2P = (0.8*HP_2*746*10**-3/pf_2)*exp(%i*theta_2)     //kVA demanded by second motor(kVA)
S_3P = (HP_3*746*10**-3/pf_3)*exp(%i*theta_3)         //kVA demanded by third motor(kVA)
S_TP = S_1P + S_2P + S_3P                                   //Total kVA demanded by all loads(kVA)
pf_l_wc = cos(phasemag(S_TP)*%pi/180)                       //Line power factor without capacitive correction
kW_T = real(S_TP)                                            //Total kW demanded by load(kW)
kVAR_T = imag(S_TP)                                          //Total lagging kVAR demanded by loads(kVAR)
theta_4 = acos(pf_4)
P_react = kW_T*tan(theta_4)                            //Reactive power supplied by line for 0.9 pf(kVAR)
power = kVAR_T - P_react                                    //Reactive power supplied by capacitor bank(kVAR)

theta_5 = acos(pf_5)
theta_6 = acos(pf_6)
S_2L = (2*HP_2*746*10**-3/(3*pf_5))*exp(%i*theta_5)   //kVA demanded by second motor(kVA)
S_3L = (HP_3*746*10**-3/pf_3)*exp(%i*theta_3)         //kVA demanded by third motor(kVA)
S_TL = S_2L + S_3L                                          //Total kVA demanded during lean period(kVA)
S_line = real(S_TL) - complex(0,power-imag(S_TL))           //kVA supplied by line(kVA)
pf_line = cos(phasemag(S_line)*%pi/180)                     //Line power factor

// Result Section
printf('Line power factor with capacitor bank connected during lean period = %.2f leading' ,pf_line)
