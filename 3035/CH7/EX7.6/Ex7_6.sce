// Variable Declaration
P_1 = 250.0     //Load at unity power factor(kW)
pf_1 = 1        //Power factor
P_2 = 1500.0    //Load at 0.9 power factor(kW)
pf_2 = 0.9      //Lagging power factor
P_3 = 1000.0    //Load at 0.8 power factor(kW)
pf_3 = 0.8      //Lagging power factor
P_4 = 700.0     //Load at 0.78 power factor(kW)
pf_4 = 0.76     //Lagging power factor

// Calculation Section
theta_1 = acos(pf_1)
theta_2 = acos(pf_2)
theta_3 = acos(pf_3)
theta_4 = acos(pf_4)
kW_T = P_1+P_2+P_3+P_4                   //Total kW carried by feeder(kW)
kVAR_T = P_1*tan(theta_1)+P_2*tan(theta_2)+P_3*tan(theta_3)+P_4*tan(theta_4)
pf_feed = cos(atan(kVAR_T/kW_T))
feeder_KVA = (kW_T**2+kVAR_T**2)**0.5    //Feeder kVA
feeder_kW = feeder_KVA                   //Load at unity pf(kW)


// Result Section
printf('Feeder power factor = %.3f lagging' ,pf_feed)
printf('Load at unity power factor = %.f kW' ,feeder_kW)
printf('\nNOTE : ERROR : The load data should be 700 kW at 0.76 pf lagging instead of 700 kW at 0.78 lagging')
