clc
mh =  20.15 // mass flow rate of hot fluid in Kg/s
mc = 5.04 // mass flow rate of cold fluid in Kg/h
ch = 2.094 // Specific heat capacity of hot fluid in kJ/kgK
cc = 4.2 //Specific heat capacity of cold fluid in kJ/kgK 
th1 = 121// Inlet temperature of hot fluid in degree Celsius
th2 = 40 // Exit temperature of hot fluid in degree Celsius
tc1 = 10 // Inlet temperature of cold fluid in degree Celsius
U = 0.34 // heat transfer coefficient in kW/m^2K
n = 200 // total number of tubes
l = 4.87 // length of tube in m
d = 1.97 // Outer diameter in cm
printf("\n Example 18.8\n")
A = %pi*n*d*1e-2*l // Total surface area
mc_oil = mh*ch
mc_water = mc*cc
 c_min = mc_water
    c_max =mc_oil
    
if mc_oil<mc_water then
    c_min = mc_oil
    c_max =mc_water
end

R = c_min/c_max
NTU = U*A/c_min
e = (1-exp(-1*NTU*(1-R)))/(1-R*exp(-1*NTU*(1-R)))
t_larger = e*(th1-tc1)
t_water = t_larger 
t_oil = t_water*mc_water/mc_oil
th2 = th1 - t_oil // Exit temperature of oil
Q = mh*ch*(th1-th2) // Rate of heat transfer

printf("\n Exit temperature of oil is %f degree celcius",th2)
printf("\n Rate of heat transfer is %d kW",Q)
//The answers vary due to round off error

