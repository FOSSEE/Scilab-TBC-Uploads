clc
Hfg = 2257 // Latent heat at 100 degree Celsius

ma =  500 // mass flow rate of air in Kg/h
ch = 1.005 // Specific heat capacity of hot air in kJ/kgK
ta1 = 260 // Inlet temperature of hot air in degree Celsius
ta2 = 150 // Inlet temperature of cold air in degree Celsius
tc1 = 100 // Inlet temperature of steam
tc2 = tc1 // Exit temperature of steam
U = 46 // heat transfer coefficient in W/m^2K

printf("\n Example 18.7\n")
Q = ma*ch*(ta1-ta2)
m = Q/Hfg // mass flow rate of steam
te = ta2-tc1 // Exit end temperature difference in degree Celsius
ti = ta1 - tc2 // Inlet end temperature  difference in degree Celsius
t_lm = (ti-te)/(log(ti/te))
A = Q / (U*t_lm*3.6) // Surface are of heat exchanger

printf("\n Surface area of heat exchanger is %f m^2",A)

//The answers vary due to round off error

