//(9.3)   At the beginning of the compression process of an air-standard dual cycle with a compression ratio of 18, the temperature is 300 K and the pressure is 0.1 MPa. The pressure ratio for the constant volume part of the heating process is 1.5:1. The volume ratio for the constant pressure part of the heating process is 1.2:1. Determine (a) the thermal efficiency and (b) the mean effective pressure, in MPa.


//solution

//variable initialization
T1 = 300                                                                        //beginning temperature in kelvin
p1 = .1                                                                         //beginning pressure in MPa
r = 18                                                                          //compression ratio
pr = 1.5                                                                        //The pressure ratio for the constant volume part of the heating process
vr = 1.2                                                                        // The volume ratio for the constant pressure part of the heating process

//analysis
//States 1 and 2 are the same as in Example 9.2, so 
u1 = 214.07                                                                     //in kj/kg
T2 = 898.3                                                                      //in kelvin
u2 = 673.2                                                                      //in kj/kg
//Since Process 2–3 occurs at constant volume, the ideal gas equation of state reduces to give
T3 = pr*T2                                                                      //in kelvin
//Interpolating in Table A-22, we get
h3 = 1452.6                                                                     //in kj/kg
u3 = 1065.8                                                                     //in kj/kg
//Since Process 3–4 occurs at constant pressure, the ideal gas equation of state reduces to give
T4 = vr*T3                                                                      //in kelvin
//From Table A-22,
h4 = 1778.3                                                                     //in kj/kg
vr4 = 5.609
//Process 4–5 is an isentropic expansion, so
vr5 = vr4*r/vr
//Interpolating in Table A-22, we get
u5 = 475.96                                                                     //in kj/kg

//part(a)
eta = 1-(u5-u1)/((u3-u2)+(h4-h3))
printf('the thermal efficiency is:  %f',eta)

//part(b)
//The specific volume at state 1 is evaluated in Example 9.2 as
v1 = .861                                                                       //in m^3/kg
mep = (((u3-u2)+(h4-h3)-(u5-u1))/(v1*(1-1/r)))*10^3*10^-6                       //in MPa
printf('\nthe mean effective pressure, in MPa is:  %f',mep)











