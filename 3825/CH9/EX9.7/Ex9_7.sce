clc
ro=16
gama=1.4
T1=310.15 //temperature in kelvin
T2=T1*(ro^(gama-1))
mprintf("T2=%fK\n",T2)//ans vary due to roundoff error
deltas=1.2
CP=1.0047
T3=(%e^(deltas/CP))*T2 
mprintf("T3=%fK\n",T3)//ans vary due to roundoff error
q1=CP*(T3-T2)
rc=T3/T2
mprintf("rc=%f\n",rc)//ans vary due to roundoff error
mprintf("q1=%fkJ/kg\n",q1)//ans vary due to roundoff error
Eta=1-(((rc^gama)-1)/((gama*ro^(gama-1))*(rc-1)))
mprintf("Eta=%f",Eta)//ans vary due to roundoff error


