
// Theory and Problems of Thermodynamics
// Chapter 5
//Second Law of Thermodynamcis
// Example 21

clear ;clc;

//Given data
PA = 0.2                // pressure of air at station A in MPa
TA = 423.15             // temperature of air at station A in K
PB = 0.18               // pressure of air at station B in MPa
TB = 403.15             // temperature of air at station B in K
R = 8.314               // gas constant
r = 1.4                 // specific ration of heat capacities 

// for a flow process, the second law of thermodynamics s2>=s1
//Hence, air flows in the direction of increasing entrophy
// SB-SA = Cp*log(TB/TA)-Rlog(PB/PA)
SB_SA = R*{[r/(r-1)]*log(TB/TA) - log(PB/PA)}  //change in entrophy(SB-SA)

// Output Results
mprintf('The difference in SB and SA = %5.4f kJ/kmol K', SB_SA)
mprintf('\n Hence the flow direction is from Station B to Station A')
