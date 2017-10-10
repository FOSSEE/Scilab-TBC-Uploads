clc
Ps=4.241 //pressure in kPa
phi=0.6
pw=Ps*phi
mprintf("Partial pressure of water vapor=%fkPa\n",pw)//ans vary due to roundoff error
P=101.325 //in kPa
pa=P-pw
mprintf("pa=%fkPa\n",pa)//ans vary due to roundoff error
w=0.622*(pw/pa)
mprintf("w=%f kg water/kg dry air\n",w)//ans vary due to roundoff error
Mw=18
R=8.314*10^3
T=303 //temperature in kelvin
V=100 //in metre-cube
mprintf("Mass of water vapor=%fkg\n",(pw*10^3*V*Mw)/(R*T))//ans vary due to roundoff error
Ma=28.97
mprintf("Mass of dry air=%fkg\n",(pa*10^3*V*Ma)/(R*T))//ans vary due to roundoff error
Ps=8.2578
phi=0.9
pw=Ps*phi
mprintf("pw=%fkPa",pw)//ans vary due to roundoff error

