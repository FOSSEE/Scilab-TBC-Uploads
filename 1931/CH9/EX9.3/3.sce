clc
clear
//INPUT DATA
EF=11.63*1.6*10^-19//fermi energy of conducting electron in aluminium in J
t=7.3*10^-15//relaxation time for electron in sec
m=9.11*10^-31//mass of electon in Kg

//CALCULATION
Vf=(sqrt((2*EF)/m))/10^6//The fermi velocity fo conducting electron in aluminium in ms^-1*10^6
x=(t*Vf*10^6)/10^-9//mean free path for conducting electron of aluminium in nm

//OUTPUT
printf('The fermi velocity fo conducting electron in aluminium is %3.4f*10^6 ms^-1 \n The mean free path for conducting electron of aluminium is %3.4f nm',Vf,x)
