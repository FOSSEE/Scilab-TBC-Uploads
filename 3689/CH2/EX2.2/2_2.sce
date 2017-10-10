////Variable Declaration  
m = 100.0            //Mass of water, g 
T = 100.0            //Temperature of water, °C
Pext = 1.0           //External Pressure on assembly, bar
x = 10.0             //percent of water vaporised at 1 bar,-
i = 2.00             //current through heating coil, A
v = 12.0             //Voltage applied, v
t = 1.0e3            //time for which current applied, s 
rhol = 997           //Density of liquid, kg/m3
rhog = 0.59          //Density of vapor, kg/m3

//Calculations
q = i*v*t
vi = m/(rhol*100)*1e-3
vf = m*(100-x)*1e-3/(rhol*100) + m*x*1e-3/(rhog*100)
w = -Pext*(vf-vi)*1e5
//Results
printf("\n Heat added to the water %4.2f kJ",q/1000)

printf("\n Work done in vaporizing liquid is %4.2f J",w)

