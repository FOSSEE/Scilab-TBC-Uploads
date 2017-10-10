clc
P1=100*10^3
P2=10^6
gama=1.4
T1=300 //temperature in kelvin
T2=T1*((P2/P1)^((gama-1)/gama))
mprintf("T2=%fK\n",T2)//ans may vary due to roundoff error
R=8.314
W=(R*(T1-T2))/(gama-1)
mprintf("W=%fJ/mol",W)//ans vary due to roundoff error

