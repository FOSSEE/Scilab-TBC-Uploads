
// Given:-
mFdot = 1.8e-3                                                              // fuel mass flow rate in kg/s
ech = 47346.0                                                               // in kj/kg, from example 13.12(a)
Wcvdot = 37.0                                                               // power developed by the engine in kw

// Calculations
Efdot = mFdot*ech                                                           // rate at which exergy enters with the fuel in kw
epsilon = Wcvdot/Efdot                                                      // exergetic efficiency

// Result
printf( ' The exergetic efficiency is:  %.3f',epsilon)
