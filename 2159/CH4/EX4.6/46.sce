// problem 4.6
b=2
d=3
H1=4
H2=7
H=0.8+H1
Cd=0.62
g=9.81
Q1=(2*Cd*b*((2*g)^0.5)*((H*H*H)^0.5-(H1*H1*H1)^0.5))/3
Q2=Cd*b*(H2-H)*((2*g*H)^0.5)
Q=Q1+Q2
q=Q*1000
disp(q,"Discharge in litres/sec")
