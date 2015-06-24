clc

v=10^5// m/s
m=9.11*10^-31// kg*m/s
e=1.6*10^-19// eV
h=1.054*10^-34
E=0.5*m*v*v
disp(E,"the value of E in J is eV")
E1=E/e // value of E in eV
disp(E1,"eV=")
d=sqrt((h*h)/(2*m*E))
disp(d,"the value of d in m is ")
