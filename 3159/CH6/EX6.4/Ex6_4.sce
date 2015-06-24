// calculation of down climb of crystal on heating
clc
a = 1e10// total number of edge dislocation 
N = 6.023e23 // Avogadro number
R = 8.314 // Universal gas constant
t1 = 0 // initial temperature in K
t2 = 1000 // Final temperature in K
del_hf = 100 // Enthalpy of vacancy formation in KJ
d = 2 // length of one step in angstrom
v = 5.5e-6 // volume of one mole crystal
printf("\n Example 6.4")
n = N*exp(-(del_hf*1e3)/(R*(t2-t1)))/v
k = 1/(d*1e-10) // atoms required for 1 m climb
b = n/(k*a)// average amount of climb
c = b*d*1e-10

printf("\n Average down climb of crystal is %.2em",c)

