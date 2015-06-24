//converting voltage source to current source

I=240/3

//KCLs

A=[1/3+1/6,-1/6;-1/6,1/6+1/12+1/30]
V=inv(A)*[70;5]
Vx=V(1)
Vy=V(2)-60

V6=V(2)-V(1)
P6=V6*V6/6

disp(P6)