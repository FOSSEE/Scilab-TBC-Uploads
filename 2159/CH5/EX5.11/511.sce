// problem 5.11
Cd=0.6
x=90
q=0.05
g=9.81
dh=0.00025
z=(15*q)/(8*Cd*((2*g)^0.5)*(tand(x/2)))
H=z^0.4
error=2.5*(dh/H)
disp(error*100,"the percentage error in the discharge")
