// problem 2.10
a=0.12
l=1.8
s=0.7
z=9810
wp=s*a*a*l*z
v=a*a*(l-0.2)
w=v*z
t=w-wp
s.p=110000
// applying equilibrium balance
w=t/(1-(9810/s.p)) 
disp(w,"weight of lead in N")
