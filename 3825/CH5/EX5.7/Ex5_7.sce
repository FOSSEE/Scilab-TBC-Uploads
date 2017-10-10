clc
T1=300 //temperature in kelvin
P1=100 //pressure in kPa
P2=2 //pressure in MPa
gama=1.4 //Cp/Cv ratio
T2=T1*(((P2*10^6)/(P1*10^3))^((gama-1)/gama))
mprintf("T2=%fK\n",T2)//ans vary due to roundoff error
Cr=(T1*P2*10^6)/(P1*10^3*T2)
mprintf("Compression ratio=%f\n",Cr)//ans vary due to roundoff error
R=8.314
W=R*(T1-T2)/(gama-1)
mprintf("W=%fkJ/mol",W/1000)//ans vary due to roundoff error




