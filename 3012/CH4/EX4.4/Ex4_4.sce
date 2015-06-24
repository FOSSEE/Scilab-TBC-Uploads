// Given:-
m1dot = 4600.0                                    // mass flow rate in kg/h
Wcvdot= 1000.0                                    // turbine power output in kv
p1= 60.0                                          // pressure in bar
T1=400.0                                          // temperature in degree celc
V1= 10.0                                          // velocity in m/s

// At exit:-
p2= 0.10                                          // pressure in bar
q2= 0.90                                          // quality 
V2= 50.0                                          // velocity in m/s

// From table A-2 and A-3:-
h1= 3177.2                                        // specific enthalpy at inlet in kJ/kg
hf2= 191.83
hg2= 2584.63

// Calculation:-
h2 = hf2+q2*(hg2-hf2)                             // specific enthalpy at exit in kJ/kg
Qcvdot = Wcvdot + m1dot*((h2-h1)+(V2**2- V1**2)/(2*1000))/3600
 
// Results:-
printf( ' The rate of heat transfer between the turbine and surroundings is %.2f kW',Qcvdot)
