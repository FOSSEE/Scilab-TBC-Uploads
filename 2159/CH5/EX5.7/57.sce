// problem 5.7
l=0.77
H=0.39
H1=0.6
Dp=H+H1
Cd=0.623
g=9.81
Q=(2*Cd*l*((2*g*H*H*H)^0.5))/3
v=Q/(l*Dp)
Ha=(v*v)/(2*g)
q=(2*Cd*l*((2*g)^0.5)*(((H+Ha)^1.5)-(Ha^1.5)))/3
disp(q,"discharge in m3/sec")
