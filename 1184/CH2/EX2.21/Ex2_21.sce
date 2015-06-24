//Example 2-21, Page no - 54
clear
clc

fr= 52*10^6
Rw= 4.1
L =0.15*10^-6

Z = L/((1/(4*3.14^2*fr^2*L))*Rw)

printf('the impedance of the circuit is %.1f ohm',Z)

