//Example 4.16.
clc
format(6)
I=5*10^-3
T=300
disp("Forward resistance of a PN junction diode, rf = (eta*VT)/I  where VT = T/11600 and eta = 2 for silicon")
disp("Therefore,  rf = 2*(T/11600) / 5*10^-3")
eta=2 //for silicon
rf=600/(11600*5*10^-3)
disp(rf,"    rf(ohm) = ")