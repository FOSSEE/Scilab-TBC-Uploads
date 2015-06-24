// problem 4.2
b=1
H=0.15
Cd1=0.62
x=90
g=9.81
Cd2=0.58
Q1=2*Cd1*b*((2*g*H*H*H)^0.5)/3
z=(15*Q1)/(8*Cd2*((2*g)^0.5)*tand(x/2))
H1=z^0.4
disp(H1*100,"the depth over the traingular veir in cm")
