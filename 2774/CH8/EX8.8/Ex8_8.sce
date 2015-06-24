clc
//solution
// initialization of variables
// REFER TO FIG. 8.4
T1=30 // outside temperature in degree celsius
phi1=0.9 // outside relative humidity
T2=23 // room temperature in degree celsius
phi2=0.4 // relative humidity in room

// using psychrometric chart
w1=0.0245 // specific humidity @ 30 *C and relative humidity 0.9
h1=93 // specific enthalpy @ 30 *C and relative humidity 0.9
w2=w1 // during cooling humidity remains constant 
w3=0.007 // specific humidity @ 23 *C and relative humidity 0.4
h4=41 // final specific enthalpy
h3=26 // specific enthalpy @ 23 *C and relative humidity 0.4
deltaw=w3-w2 // moisture removed
printf("the amount of moisture removed is %0.4f kg \n",deltaw)


qout=h3-h1 // heat removed F-G-H process

printf(" the heat removed is %i kJ/kg \n ",qout)

qin=h4-h3 // heat added to bring to desired state

printf(" the heat added is %i kJ/kg ",qin)






