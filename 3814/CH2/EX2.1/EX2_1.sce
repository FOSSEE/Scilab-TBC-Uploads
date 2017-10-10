
// to determine pressure at station point 2
// applying bernoullis equation
// ex 2.1 pgno.39 
clc;
p1=50 // pressure at point 1
v1=5// velocity  
g=9.8// constant
p2=p1+((v1^2)/(2*g)) //ipressure equation according to bernoullis equation
mprintf('%f Pascal',p2)// displaying pressure
psw=1.03e3// specific gravity in kg/m3
P2=psw*g*p2 // calculating pressure at station 2
mprintf('\n P2= %e Pascal',P2)

