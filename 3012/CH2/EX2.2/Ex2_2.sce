// Given:-
p1 = 3*(10**5)                                  // initial pressure in pascal
v1 = 0.1                                        // initial volume in m3
v2 = 0.2                                        // final volume
m = 4.0                                         // mass of the gas in kg
deltau = -4.6                                   // change in specific internal energy in KJ/Kg

// Calculations

constant = p1*(v1**1.5)                           // p*(v^n) = constant

function v = p(v)
    v = constant/(v**1.5)                                // expressing pressure as function of volume        
endfunction

work = intg(v1,v2,p)                         // integrating pdv from initial to final volume 
w=work(1)/1000                              // divided by 1000 to convert to KJ

deltaU = m*deltau                           // change in internal energy in KJ
Q = deltaU + w                                // neglecting kinetic and potential energy changes

// Result
printf( 'net heat transfer for the process in KJ %.2f',Q)
