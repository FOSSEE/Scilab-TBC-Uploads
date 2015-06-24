clear
clc

V=300e3
R=400
k=1.5e-27

E=10
x=1
e=1e-5
while (E>e)
    f=(k*R*x^6) +x -(2*V)
    df=(6* k*R*x^5) +1
    x1=x-(f/df)
    E=abs(x1-x)
    x=x1
end
eA=round(x)
IA=k*eA^6

mprintf("eA=%d, Ia=%d ",eA, IA)
