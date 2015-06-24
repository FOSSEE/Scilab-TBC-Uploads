clc
//Example 11.4
//Page no. 115
printf("Example 11.4-Page no. 115\n\n")
//given
//mass flowrate of flue gas ,average moleculer weight flue gas,standard conditions
 m=50//lb/min
 M=29//lb/lbmol
 Ts=60//degree F
 Ps=1//atm
 R=0.73//atm.ft^3/(lbmol.degree R)
 Ts=Ts+460//rankin
 Qs=(m/M)*(R*Ts/Ps)
 printf("standard volumetric flowrate Qs=%f scfm",Qs)
