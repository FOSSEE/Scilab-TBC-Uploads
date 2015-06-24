// Given:-
// State 1
p1 = 20.0                      // initial pressure in MPa
T1 = 520.0                     // initial temperature in degree celcius
Z1 = 0.83                      // compressibility factor
R = 8.314                      // universal gas constant in SI unit
n = 1000.0/18.02               // number of moles in a kg of water

// State 2
T2 = 400.0                     // final temperature in degree celcius

// From table A-1
Tc = 647.3                     // critical temperature in kelvin
pc = 22.09                     // critical pressure in MPa

// Calculations
Tr = (T1+273)/Tc               // reduced temperature
Pr = p1/pc                     // reduced pressure 
v1 = (Z1*n*R*(T1+273))/(p1*(10**6))
vr = v1*(pc*(10**6))/(n*R*Tc)
Tr2 = (T2+273)/Tc
PR = 0.69                       // at above vr and Tr2
P2 = pc*PR

// Results 
printf( ' The specific volume in state1 is %f m3/kg and the corresponding value obtained from table A-4 is .01551 m^3/Kg',v1)
printf( ' The pressure in MPa in the final state is %f MPa and the corresponding value from the table is 15.16Mpa',P2);
