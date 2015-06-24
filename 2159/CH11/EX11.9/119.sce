// problem 11.9
Q=4
H=250
L=3000
n1=4
n=0.91
nh=0.9
Cv=0.975
f4=0.0045
hf=H-H*n
Hn=H-hf
g=9.81
w=9810
V1=Cv*(sqrt(2*g*Hn))
Pw=w*Q*V1*V1/(2*g*1000)
Pt=nh*Pw
q=Q/n1
d=sqrt(4*q/(3.142*V1))
D=((f4*L*16*16)/(2*g*3.142*3.142*hf))^0.2
disp(D,d,Pt,"power developed by turbine in Kw,diameter jet and diameter of pipeline")
