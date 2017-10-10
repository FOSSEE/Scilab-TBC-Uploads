clc
T2=300 //temperature in Kelvin
T1=420 //temperature in Kelvin
Eta=1-(T2/T1)
mprintf("maximum possible efficiency=%f",Eta)//ans vary due to roundoff error
