// Given:-
T1 = 300.00                                                                     // in kelvin
p1 = 100.00                                                                     // in kpa
p2 = 1000.00                                                                    // in kpa
p3 = p2
pc = 300.00                                                                     // in kpa
pd = 300.00                                                                     // in kpa
Td = 300.00                                                                     // in kelvin


// Part(a)
// From table A-22
prd = 1.386
// Interpolating in Table A-22, we get
T2 = 422                                                                        // in kelvin
h2 = 423.8                                                                      // in kj/kg
// Calculations
pr2 = prd*(p2/pd)
// Result
printf( ' The temperature at the exit of the second compressor stage  is : %.2f kelvin.',T2)

// Part(b)
// From Table A-22 at T1 = 300
h1 = 300.19                                                                     // in kj/kg
// Since Td = T1,
hd = 300.19                                                                     // in kj/kg
// with pr data from Table A-22 together
pr1 = 1.386
// Interpolating in Table A-22, we obtain
hc = 411.3                                                                      // in kj/kg
// Calculations
prc = pr1*(pc/p1)
wcdot = (hc-h1)+(h2-hd)                                                         // The total compressor work per unit of mass in kj/kg
// Result
printf( ' The total compressor work input per unit of mass flow is : %.2f kJ/kg',wcdot)

// Part(c)
// Interpolating in Table A-22, we get
T3 = 574                                                                        // in kelvin
h3 = 579.9                                                                      // in kj/kg
// Calculations
pr3 = pr1*(p3/p1)
wcdot = h3-h1                                                                   // The work input for a single stage of compression in kj/kg
// Results
printf( ' For a single stage of compression, the temperature at the exit state is : %.2f kelvin',T3)
printf( ' For a single stage of compression, the work input is : %.2f kJ.',wcdot)
