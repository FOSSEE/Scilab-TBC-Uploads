//Example 2-20, Page No - 54

clear
clc

fr= 52*10^6
Q=12
L=0.15*10^-6

Rw=(6.28*fr*L)/Q
Req= Rw*(Q^2+1)

printf('Impedance of the parellel LC circuit is %.1f ohm',Req)
