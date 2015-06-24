// Variable Declaration
P = 5.0         //Power of substation(MVA)
V_hv = 33.0     //High voltage(kV)
V_lv = 11.0     //Low voltage(kV)
f = 50.0        //Frequency(Hz)
P_1 = 0.5       //Minimum load(MW)
pf_1 = 0.85     //Lagging power factor of minimum load
P_2 = 2.8       //Maximum load(MW)
pf_2 = 0.78     //Lagging power factor of maximum load
pf_i = 0.9      //Lagging power factor of incoming current

// Calculation Section
theta_1 = acos(pf_1)
theta_2 = acos(pf_2)
theta_i = acos(pf_i)

load_react = P_1*tan(theta_1)*1000                      //Load reactive power(kVAR)
line_react = P_1*tan(theta_i)*1000                      //Reactive power supplied by line(kVAR)
rating_fix = load_react - line_react                         //kVAR rating of fixed capacitor bank(kVAR)

bank_react = P_2*(tan(theta_2)-tan(theta_i))*1000  //Reactive power to be supplied by capacitor banks(kVAR)
rating_swi = bank_react - rating_fix                         //Reactive power rating of switched unit(kVAR)

C_fix = rating_fix*10**-3/(3**0.5*V_lv**2*2*%pi*f)       //Capacitance for fixed bank
C_swi = rating_swi*10**-3/(3**0.5*V_lv**2*2*%pi*f)       //Capacitance for switched bank

// Result Section
printf('kVAR rating of fixed capacitors = %.1f kVAR' ,rating_fix)
printf('kVAR rating of switched capacitors = %.1f kVAR' ,rating_swi)
printf('Capacitance of fixed bank , C = %.2e F/phase' ,C_fix)
printf('Capacitance of switched bank , C = %.2e F/phase' ,C_swi)
