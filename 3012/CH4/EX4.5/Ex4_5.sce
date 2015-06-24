// Given:-
p1=1.00                                         // pressure in bar
t1= 290.00                                      // temperature in kelvin
A1= 0.1                                         // area in m^2
V1= 6.00                                        // velocity in m/s

// At exit:-

p2=7.00                                         // pressure in bar
t2= 450.00                                      // temperature in kelvin
V2= 2.00                                        // velocity in m/s
Qcvdot= -180.0                                  // heat transfer rate in kJ/min
R= 8.314                                        // universal gas constant in SI units

// from table A-22

h1= 290.16                                      // specific enthalpy in kJ/kg
h2= 451.8                                       // specific enthalpy in kJ/kg

// Calculations:-

v1 =  (R*1000*t1)/(28.97*p1*10**5)              // specific volume
mdot=(A1*V1)/v1                                 // mass flow rate
Wcvdot = Qcvdot/60 + mdot*((h1-h2)+(V1**2-V2**2)/(2*1000))

// Results:-
                      
printf( ' The power input to the compressor is %.2f kw',Wcvdot)
