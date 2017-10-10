// difference between pressure inlet and throat of the venturimeter
// ex 2.11 pgno.48
clc
a2=0.06 // diameter of the throat 
a1=0.1 // diameter of the pipe
p=0.85*1000 // kerosene fo sp. gravity
q=0.05 // flow rate
a=a2/a1 
a3=1-a**4
P=(q*q*p*a3)/(2*((3.14/4)*a2*a2)^2) // presssure
mprintf('P1-P2 = %e Pa',P)
