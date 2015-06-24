// problem 9.2
D=0.18
s=0.36
Hs=3
Hd=45
N=50
n=0.85
a=3.142*D*D/4
Q=(2*a*s*N)/60
g=9.81
w=g*1000
P=w*Q*(Hs+Hd)/(n*1000)
disp(P,"power in kw required to drive the pump")
