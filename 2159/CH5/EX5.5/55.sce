// problem 5.5
a=20*(10^6)
x=0.03
q=a*x
qf=q*0.4/3600
n=2
H=0.6
// Using Francis formula 
L=(qf/(1.84*(H^1.5)))+(0.1*n*H)
disp(L,"the lenght of the weir in m")
