clc
//Chapter8
//Ex_7
//Given
N=500 //no.of turns
B=5 //in Tesla
l=1 //in m
r=10^-3 //in m
uo=4*%pi*10^-7 //in H/m
d=10*10^-2 //in m
I=(B*l)/(uo*N)
disp(I,"current in Amperes is")
E_vol=B^2/(2*uo)
v=%pi*l*d^2/4
E=E_vol*v
disp(E,"Energy stored in the solenoid in joules is")
