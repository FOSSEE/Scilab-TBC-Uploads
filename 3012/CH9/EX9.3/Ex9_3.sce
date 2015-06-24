// Given :-
T1 = 300.00                                                                     // beginning temperature in kelvin
p1 = 0.1                                                                        // beginning pressure in MPa
r = 18.00                                                                       // compression ratio
pr = 1.5                                                                        // The pressure ratio for the constant volume part of the heating process
vr = 1.2                                                                        // The volume ratio for the constant pressure part of the heating process

// Analysis
// States 1 and 2 are the same as in Example 9.2, so 
u1 = 214.07                                                                     // in kj/kg
T2 = 898.3                                                                      // in kelvin
u2 = 673.2                                                                      // in kj/kg

// Interpolating in Table A-22, we get
h3 = 1452.6                                                                     // in kj/kg
u3 = 1065.8                                                                     // in kj/kg

// From Table A-22,
h4 = 1778.3                                                                     // in kj/kg
vr4 = 5.609

// Interpolating in Table A-22, we get
u5 = 475.96                                                                     // in kj/kg

// Calculations
// Since Process 2–3 occurs at constant volume, the ideal gas equation of state reduces to give
T3 = pr*T2                                                                      // in kelvin
// Since Process 3–4 occurs at constant pressure, the ideal gas equation of state reduces to give
T4 = vr*T3                                                                      // in kelvin
// Process 4–5 is an isentropic expansion, so
vr5 = vr4*r/vr

// Part(a)
eta = 1-(u5-u1)/((u3-u2)+(h4-h3))
// Result
printf( ' The thermal efficiency is : %.2f',eta)

// Part(b)
// The specific volume at state 1 is evaluated in Example 9.2 as
v1 = 0.861                                                                       // in m^3/kg
mep = (((u3-u2)+(h4-h3)-(u5-u1))/(v1*(1-1/r)))*10**3*10**-6                      // in MPa

// Result
printf( ' The mean effective pressure, is : %.2f MPa.',mep)
