// Given:-
T1 = 294.0                            // entry temperature of air in kelvin
P1 = 5.1                              // entry pressure of air in bars
T2 = 352.0                            // exit temperature of hot stream in kelvin
P2 = 1.0                              // exit pressure of hot stream in bars
T3 = 255.0                            // exit temperature of cold stream in kelvin
P3 = 1.0                              // exit pressure of cold stream in bars
cp = 1.0                              // in kj/kg.k

// Calculations
R = 8.314/28.97
se = 0.4*(cp*log((T2)/(T1))-R*log(P2/P1)) + 0.6*(cp*log((T3)/(T1))-R*log(P3/P1))
                                      // specific entropy in kj/kg.k


// Results
printf( ' Specific entropy in kj/kg.k =  %.3f KJ/kg.',se)
printf( ' Since se > 0, the claim of the writer is true');
