
//let resistance and inductance of the coil be R and L respectively
V=220//voltage applied to coil
f=50//frequency of supply
I=60//current indicated by ammeter
Z1=V/I
//when the frequency is increased to 100 Hz
I=40//current indicated by ammeter
Z2=V/I
//on solving for L
L=sqrt((Z2^2-Z1^2)/3)/(100*%pi)
R=sqrt(Z1^2-(100*%pi*L)^2)
mprintf("Resistance of coil=%f ohm\nInductance of coil=%f H",R,L)
