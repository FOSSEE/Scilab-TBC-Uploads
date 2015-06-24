// Given :-
Tc = 283.0                         // in kelvin
TH = 295.0                         // in kelvin
QH = 5*(10**5)                     // in kj per day

// Calculations
Wcyclemin = (1-(Tc/TH))*QH

// Results
printf( ' Minimum theoretical work input for one day of operation in kJ is: %.2f',Wcyclemin)
