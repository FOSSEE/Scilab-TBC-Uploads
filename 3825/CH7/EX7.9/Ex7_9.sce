clc
T=500 //temperature in Kelvin
W=250 //watts of motor
h=2*3600 //time of operation in seconds
Q=W*h
deltaS=Q/T
mprintf("deltaS=%fkJ/K",deltaS/1000)//ans in textbook is wrong

