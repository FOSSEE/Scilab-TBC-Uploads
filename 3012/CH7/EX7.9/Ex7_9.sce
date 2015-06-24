// Given:-
T0 = 273.00                                                 // in kelvin
pricerate = 0.08                                            // exergy value at $0.08 per kw.h

// From example 6.8
sigmadotComp = 17.5e-4                                      // in kw/k
sigmadotValve = 9.94e-4                                     // in kw/k
sigmadotcond = 7.95e-4                                      // in kw/k

// Calculations
// The rates of exergy destruction
EddotComp = T0*sigmadotComp                                 // in kw
EddotValve = T0*sigmadotValve                               // in kw
Eddotcond = T0*sigmadotcond                                 // in kw

mCP = 3.11                                                  // From the solution to Example 6.14, the magnitude of the compressor power in kW

// Results
printf( ' Daily cost in dollars of exergy destruction due to compressor irreversibilities = %.3f',EddotComp*pricerate*24)
printf( ' Daily cost in dollars of exergy destruction due to irreversibilities in the throttling valve = %.3f',EddotValve*pricerate*24)
printf( ' Daily cost in dollars of exergy destruction due to irreversibilities in the condenser = %.3f ',Eddotcond*pricerate*24)
printf( ' Daily cost in dollars  of electricity to operate compressor = %.3f',mCP*pricerate*24)
