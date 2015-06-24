// Given:-
p1 = 30.0                                             // pressure of entering steam in bar
t1 = 400.0                                            // temperature of entering steam in degree celcius
v1 = 160.0                                            // velocity of entering steam in m/s
t2 = 100.0                                            // temperature of exiting saturated vapor in degree celcius
v2 = 100.0                                            // velocity of exiting saturated vapor in m/s
W = 540.0                                             // rate of work developed in kj per kg of steam
Tb = 350.0                                            // the temperature on the boundary where heat transfer occurs in kelvin
T0 = 25.0                                             // in degree celcius
p0 = 1.0                                              // in atm

// From table A-4
h1 = 3230.9                                           // in kj/kg
s1 = 6.9212                                           // in kj/kg.k
// From table A-2 
h2 = 2676.1                                           // in kj/kg
s2 = 7.3549                                           // in kj/kg.k
// From example 6.6
Q = -22.6                                             // in kj/kg
  
// Calculations
DELTAef = (h1-h2)-(T0+273)*(s1-s2)+(v1**2-v2**2)/(2*1000)
// The net exergy carried in per unit mass of steam flowing in kj/kg
Eq = (1-(T0+273)/Tb)*(Q)                              // exergy transfer accompanying heat in kj/kg
Ed = ((1-(T0+273)/Tb)*(Q))-W+(DELTAef)                // The exergy destruction determined by rearranging the steady-state form of the exergy 
                                                      // rate balance

// Results
printf( ' Balance sheet')
printf( ' Net rate of exergy %f kJ/kg,',DELTAef)
printf( ' Disposition of the exergy:')
printf( '* Rate of exergy out')
printf( ' Work %f kJ/kg.',W)
printf( ' Heat transfer %f',-Eq)
printf( '• Rate of exergy destruction %f kJ/kg.',Ed)
