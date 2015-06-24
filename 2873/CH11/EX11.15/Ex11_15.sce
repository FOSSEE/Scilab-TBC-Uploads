// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 15")
P=1.013;//atmospheric pressure in bar
Cp_air=1.005;//specific heat of air at constant pressure in KJ/kg K
Cp_stream=1.86;//specific heat of stream at constant pressure in KJ/kg K
T1=30;//temperature of first stream of moist air in K
m1=3;//mass flow rate of first stream in kg/s 
T2=35;//temperature of second stream of moist air in K
m2=2;//mass flow rate of second stream in kg/s 
disp("Let temperature after mixing be Toc.For getting final enthalpy after adiabatic mixing the enthalpy of two streams are required.")
disp("For moist air stream at 30 degree celcius and 30% relative humidity.")
phi1=0.3;
disp("phi1=Pv1/Pv_sat_30oc")
disp("here Pv_sat_30oc=0.04246 bar")
Pv_sat_30oc=0.04246;
disp("so Pv1=phi1*Pv_sat_30oc in bar")
Pv1=phi1*Pv_sat_30oc
disp("corresponding to vapour pressure of 0.01274 bar the dew point temperature shall be 10.5 degree celcius")
Tdp1=10.5;
disp("specific humidity,omega1=0.622*Pv1/(P-Pv1)in kg/kg of air")
omega1=0.622*Pv1/(P-Pv1)
disp("at dew point temperature of 10.5 degree celcius,enthalpy,hg at 10.5oc=2520.7 KJ/kg")
hg=2520.7;//enthalpy at 10.5 degree celcius in KJ/kg
disp("h1=Cp_air*T1+omega1*{hg-Cp_stream*(T1-Tdp1)}in KJ/kg of dry air")
h1=Cp_air*T1+omega1*{hg-Cp_stream*(T1-Tdp1)}
disp("for second moist air stream at 35oc and 85% relative humidity")
phi2=0.85;
disp("phi2=Pv2/Pv_sat_35oc")
disp("here Pv_sat_35oc=0.005628 bar")
Pv_sat_35oc=0.005628;
disp("so Pv2=phi2*Pv_sat_35oc in bar")
Pv2=phi2*Pv_sat_35oc
disp("specific humidity,omega2=0.622*Pv2/(P-Pv2)in kg/kg of air")
omega2=0.622*Pv2/(P-Pv2)
disp("corresponding to vapour pressure of 0.004784 bar the dew point temperature is 32 degree celcius")
Tdp2=32;
disp("so,enthalpy of second stream,")
disp("h2=Cp_air*T2+omega2*{hg+Cp_stream*(T2-Tdp2)}in KJ/kg of dry air")
hg=2559.9;//enthalpy at 32 degree celcius in KJ/kg
h2=Cp_air*T2+omega2*{hg+Cp_stream*(T2-Tdp2)}
disp("enthalpy of mixture after adiabatic mixing,")
disp("=(1/(m1+m2))*((h1*m1/(1+omega1))+(h2*m2/(1+omega2))) in KJ/kg of moist air")
(1/(m1+m2))*((h1*m1/(1+omega1))+(h2*m2/(1+omega2)))
disp("mass of vapour per kg of moist air=(1/5)*((omega1*m1/(1+omega1))+(omega2*m2/(1+omega2)))in kg/kg of moist air")
(1/5)*((omega1*m1/(1+omega1))+(omega2*m2/(1+omega2)))
disp("specific humidity of mixture(omega)in kg/kg of dry air=")
omega=0.00589/(1-0.005893)
disp("omega=0.622*Pv/(P-Pv)")
disp("Pv=omega*P/(omega+0.622)in bar")
Pv=omega*P/(omega+0.622)
disp("partial pressure of water vapour=0.00957 bar")
disp("so specific humidity of mixture=0.00593 kg/kg dry air")
disp("and partial pressure of water vapour in mixture=0.00957 bar")





