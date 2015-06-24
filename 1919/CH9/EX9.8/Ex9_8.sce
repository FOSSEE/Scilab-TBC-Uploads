
// Theory and Problems of Thermodynamics
// Chapter 9
// Air_water Vapor Mixtures
// Example 8

clear ;clc;

//Given data
T1 = 313.15             // Temp of air entering adiabatic saturator in K
P1 = 101.325            // pressure air entering saturator in kPa
T3 = 298.15             // Temp of air leaving adiabatic saturator in K
P3 = 101.325            // pressure air entering saturator in kPa

ps = 3.169              // from steam tables at T = 313.15K (in kPa)
RH = 1                  // RH of steam leaving adiabatic saturator is 1
pw = ps                 // from steam tables at 25 degree C

SH_3 = 0.622*pw/(P3-pw)  // specific humidity of air

hfg_3 = 2442.3           // in kJ/kg
hg_1  = 2574.3          // in kJ/kg
hf_2  = 104.89          // in kJ/kg
Cp_air = 1.0045         // in kJ/kg K

SH1 = (Cp_air*(T3-T1) + SH_3*hfg_3) / (hg_1-hf_2)

//SH1 = 0.622*pw_2/(P1-pw_2)
deff('y=dew(pw_2)', 'y = SH1 - 0.622*pw_2/(P1-pw_2)') 
pw_2 = fsolve(0.01,dew)

ps_40 = 7.384           // from steam table at 40 degree C

RH1 = pw_2/ps_40

ps_2 = pw_2         // at dew point ps = pw
// Hence TDP = 18.8 degree C (from steam table)

// enthalphy of mixture
//h1 = h_a1 + SH1*h_w1
h1 = Cp_air*(T1-273.15) + SH1*hg_1


// Output Results
mprintf('Specific humidity of entering air at 40 degre C = %4.3f kg H20/kg air' , SH1);
mprintf('\n Relative humidity of air at 40 degree C = %3.2f ' , RH1);
mprintf('\n Dew point  = %2.1f kPa' , ps_2);
mprintf('\n Enthalphy of mixture  = %2.0f kJ/kg air' , h1);
