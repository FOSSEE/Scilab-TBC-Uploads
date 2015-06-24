clear
clc

V=300e3
R1=400
R2=50
R=1+(400/50)
k=1.5e-27

E=10
x=1
e=1e-5
while (E>e)
    f=(k*R1*x^6) +(R*x) -(2*V)
    df=(6* k*R1*x^5) +R
    x1=x-(f/df)
    E=abs(x1-x)
    x=x1
end
eA=round(x)
IA=k*eA^6

mprintf("eA=%d, Ia=%.1f ",eA, IA)
