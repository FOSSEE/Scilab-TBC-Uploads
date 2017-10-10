//Clearing console
clc
clear

//Intializing Variables
P = 10
r = 3
z0 = 0
z1 = 1

//As we have pressure on one face only and no axial pressure, we immediately observe that
fr2 = 0
fz1 = 0
fz2 = 0
fz3 = 0

//Calculating fr1 and fr3
fr1 = 2*%pi*P*r*[integrate('z','z',z0,z1)]
fr3 = 2*%pi*P*r*[integrate('1-z','z',z0,z1)]

printf('\nResults\n')
printf('\nNodal Forces')
printf('\nfr1 =%flb fr2 =%flb fr3 =%flb',fr1,fr2,fr3)
printf('\nfz1 =%flb fz2 =%flb fz3 =%flb',fz1,fz2,fz3)
