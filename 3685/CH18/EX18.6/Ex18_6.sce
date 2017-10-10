clc
mh =  1000 // mass flow rate of hot fluid in Kg/h
mc = 1000 // mass flow rate of cold fluid in Kg/h
ch = 2.09 // Specific heat capacity of hot fluid in kJ/kgK
cc = 4.187 //Specific heat capacity of cold fluid in kJ/kgK 
th1 = 80// Inlet temperature of hot fluid in degree celcius
th2 = 40 // Exit temperature of hot fluid in degree Celsius
tc1 = 30 // Inlet temperature of cold fluid in degree Celsius
U = 24 // heat transfer coefficient in W/m^2K

printf("\n Example 18.6\n")
Q = mh*ch*(th1-th2)
tc2 = Q/(mc*cc) + tc1// outlet temperature of cold fluid
te = th2-tc1 // Exit end temperature difference in degree Celsius
ti = th1 - tc2 // Inlet end temperature  difference in degree Celsius
t_lm = (ti-te)/(log(ti/te))
A = Q / (U*t_lm*3.6) // Surface are of heat exchanger

printf("\n Surface area of heat exchanger is %f m^2",A)

//The answers vary due to round off error

