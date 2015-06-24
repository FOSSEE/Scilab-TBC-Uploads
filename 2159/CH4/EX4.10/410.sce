// problem 4.10
r=5
h1=5
d=0.08
a=0.005
h2=h1-2
Cd=0.6
g=9.81
z=((2*r*((h1^1.5)-(h2^1.5)))/3)-((((h1^2.5)-(h2^2.5)))/5)
T=(z*2*3.142)/(Cd*a*((2*g)^0.5))
disp(T,"time in seconds to lower the level by 2m")
