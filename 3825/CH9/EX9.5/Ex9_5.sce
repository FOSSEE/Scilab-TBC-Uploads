clc
P3=7 //pressure in MPa
P1=0.1//pressure in MPa
T1=310.15 //temperature in kelvin
T3=2973.15 //temperature in kelvin
ro=(P3*T1)/(T3*P1)
mprintf("ro=%f\n",ro)//ans vary due to roundoff error
gama=1.4
Eta=1-(1/ro)^(gama-1)
mprintf("Eta=%f\n",Eta)//ans vary due to roundoff error
T2=T1*(ro^(gama-1))
mprintf("T2=%fK\n",T2)//ans vary due to roundoff error
Cv=0.7176
q1=Cv*(T3-T2)
mprintf("q1=%fkJ/kg\n",q1)//ans vary due to roundoff error
W=q1*Eta
mprintf("W=%fkJ/kg",W)//ans vary due to roundoff error
