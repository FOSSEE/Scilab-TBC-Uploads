// problem 4.3
D=0.1
d=0.05
q=0.02
A=3.142*D*D/4
g=9.81
w=9810
p=58.86*1000
v=q/A
Vh=(v*v)/(2*g)
Ph=p/w
Th=Ph+Vh
a=3.142*d*d/4
Cd=q/(a*((2*g*Th)^0.5))
disp(Cd,"co-efficient of discharge")

