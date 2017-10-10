//Example 10.1//

T1=1173;//K// Absolute Temperature
T2=673;//K // Absolute Temperature
R=8.314;//J/mol.K // Universal gas constant
a=10^6;//(G900/G400)
C=10^-3;//preexponential term
Q=-(R*log(a))/((1/T1)-(1/T2))*C
mprintf("Q = %i KJ per mol",Q)


