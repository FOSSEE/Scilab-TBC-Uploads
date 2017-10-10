clc
L=0.25 //length of stator stack in metre
r=0.15 //radius of stator stack in metres
BImax=0.96 //peak value of air gap flux density in tesla
P=6 //no of machine poles
phi=(4*L*r*BImax)/P //flux per pole in webers
mprintf("Φ=%fWb",phi)





