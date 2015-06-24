// problem 5.8
Q1=0.005
Cd=0.62
g=9.81
Q2=0.75
h=0.07
z=(Q1*15)/(8*Cd*((2*g)^0.5)*(h^2.5))
H=h*((Q2/Q1)^0.4)
W=2*H*z
disp(W,"width of the water surface in m")
