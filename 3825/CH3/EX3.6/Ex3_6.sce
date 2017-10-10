clc
M=30 //molar mass for ethane in kg/kmol
Tc=305.43 //temperature in kelvin
Pc=4.884 //pressure in MPa
P=70 //pressure in bar
Pr=(P*10^5)/(Pc*10^6)
mprintf("Pr=%f\n",Pr)//ans vary due to roundoff error
M1=7 //mass of ethane present in kg
Moles=(M1/M)*1000 //moles of ethane
mprintf("Moles of ethane=%fmol\n",Moles)
V=0.1 //volume of ethane in metre-cube
v=V/Moles
R=8.314
vr=Pc*10^6*v/(R*Tc)
mprintf("vr=%f\n",vr)//ans may vary due to roundoff error
Tr=1.4
T=Tr*Tc
mprintf("T=%f K",T)//ans may vary due to roundoff error



