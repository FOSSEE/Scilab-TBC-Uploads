clc
Tc=405.5 //temperature in kelvin
Pc=112.77 //pressure in bar
T=473 //temperature in kelvin
Tr=T/Tc
mprintf("Tr=%f\n",Tr)//ans vary due to roundoff error
Pr=1.9 //obtained from compressibility chart in the book with given conditions
P=Pc*Pr
mprintf("P=%fMPa",P/10)//ans vary due to roundoff error

