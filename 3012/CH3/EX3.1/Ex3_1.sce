// Given:-
// Those with 1 are of state 1 and 2 are with state 2

// State 1
p1 = 10**5                     // initial pressure in pascal 
x1 = 0.5                       // initial quality

T1 = 99.63                     // temperature in degree celcius, from table A-3
v = 0.5                        // volume of container in m3
vf1 = 1.0432*(10**(-3))        // specific volume of fluid in state 1 in m3/Kg(from table A-3)
vg1 = 1.694                    // specific volume of gas in state 1 in m3/kg(from table A-3)

// State 2
p2 = 1.5*(10**5)               // pressure after heating in pascal

T2 = 111.4                     // temperature in degree celcius in state 2, from A-3
vf2 = 1.0582*(10**(-3))        // specific volume of fluid in state 2 in m3/Kg, from A-3
vg2 = 1.159                    // specific volume of gas in state 2 in m3/Kg,from A-3

// Calculations

v1 = vf1 + x1*(vg1-vf1)        // specific volume in state 1 in m3/Kg
v2 = v1                        // specific volume in state 2 in m3/Kg
m = v/v1                       // total mass in Kg
mg1 = x1*m                     // mass of vapour in state 1 in Kg

x2 = (v1-vf2)/(vg2-vf2)        // quality in state 2
mg2 = x2*m                     // mass of vapor in state 2 in Kg 

// State 3
p3 = 2.11                      // pressure in state 3 from table A-3

// Results
printf( ' The temperature in state 1 is %f degree celcius.',T1)
printf( ' The temperature in state 2 is %f degree celcius.',T2)
printf( ' The mass of vapour in state 1 is %.2f kg.',mg1) 
printf( ' The mass of vapour in state 2 is %.2f kg.',mg2)
printf( ' The pressure corresponding to state 3 is %.2f bar',p3)
