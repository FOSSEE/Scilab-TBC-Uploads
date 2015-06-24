/////solving quadratic
Ra=0.5
P=8000
V=230
Ea=V
n=1200
Ke=V/n

p=poly([P*Ra,-V,1],"w","coeff")
w=roots(p)

Ea=w(1)     ///rejecting small value
n=Ea/Ke
disp(n)
T=P/2/%pi/n*60
disp(T)
Ia=(V-Ea)/Ra
disp(Ia)
Kt=T/Ia


p=poly([-Kt*V/Ra,Kt*Ke/Ra,0.6E-4],"w","coeff")
w=roots(p)
n=w(2)
disp(n)
