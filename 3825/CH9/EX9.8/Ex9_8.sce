clc
P1=100 //pressure in kPa
T1=300 //temperature in kelvin
rp=8
P2=P1*rp
gama=1.4
mprintf("P2=%fkPa\n",P2)//ans vary due to roundoff error
T2=T1*rp^((gama-1)/gama)
mprintf("T2=%fK\n",T2)//ans vary due to roundoff error
P3=P2
T3=1300
Tmax=T3
T4=T3*(1/rp)^((gama-1)/gama)
mprintf("T4=%fK\n",T4)//ans vary due to roundoff error
P4=P1
Cp=1.0047
Wc=-Cp*(T2-T1)
mprintf("Wc=%fkJ/kg\n",Wc)//ans vary due to roundoff error
WT=Cp*(T3-T4)
mprintf("WT=%fkJ/kg\n",WT)//ans vary due to roundoff error
Wnet=WT+Wc
mprintf("Net Work done=%fkJ/kg\n",Wnet)//ans vary due to roundoff error
q1=Cp*(T3-T2)
mprintf("Energy added=%fkJ/kg\n",q1)//ans vary due to roundoff error
Eta=Wnet/q1
mprintf("Thermal efficiency=%f",Eta)//ans vary due to roundoff error

