clc
P1=100 //pressure in kPa
V1=1 //volume in metre-cube
T1=20 //temperature in celsius
R=8.314*10^3
T2=60 //temperature in celsius
N=(P1*10^3*V1)/(R*(T1+273.15))//conversion of celsius to kelvin 
mprintf("N=%fkmol\n",N)//ans ma vary due to roundoff error
Cv=12.4717 //in kJ/kmolK
deltaT=T2-T1
deltaU=N*Cv*deltaT
mprintf("DeltaU=%fkJ\n",deltaU)//ans vary due to roundoff error
W=-deltaU
mprintf("w=%fkJ\n",W)//ans vary due to roundoff error
P2=P1*(T2+273.15)/(T1+273.15)//conversion of degree to kelvin
mprintf("P2=%fkPa",P2)//ans in the textbook is wrong


