//Chapter 17: Antenna Temperature, Remote Sensing and Radar Cross Section
//Example 17-2.1
clc;

//Variable Initialization
Tn = 50.0     //Noise temperature (K)
Tphy = 300.0      //Physical temperature (K)
Eff = 0.99       //Efficiency (unitless)
Tn_stg = 80.0       //Noise temperature of first 3 stages (K)
gain_db = 13.0       //Gain (dB)
Tphy_tr = 300   //Transmission line physical temperature (K)
Eff_tr = 0.9    //Transmission line efficiency (unitless)

//Calculations
gain = 10**(gain_db/10)
T_r = Tn_stg + Tn_stg/(gain) + Tn_stg/(gain**2)                //Receiver noise temperature (K)
Tsys = Tn + Tphy*(1/Eff - 1) + Tphy_tr*(1/Eff_tr - 1) + (1/Eff_tr)*T_r                //System temperature (K)

//Result
mprintf("The system temperature is %.0f K",Tsys)
