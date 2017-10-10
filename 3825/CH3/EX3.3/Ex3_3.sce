clc
Pc=46.41*10^5 //pressure for methane in Pascals
Tc=190.7 //temperature for methane in kelvin
P=60*10^6 //methane pressure in pascals
T=300 //methane temperature in kelvins
Pr=P/Pc
mprintf("Pr=%f\n",Pr)//ans may vary due to roundoff error
Tr=T/Tc 
mprintf("Tr=%f\n",Tr)//ans may vary due to roundoff error
Z=1.34
R=8.314*10^3
v=Z*R*T/P //volume of cylinder for storage
mprintf("v=%fmetre-cube/kmol",v)//ans varies due to roundoff error
