clear
clc
E=10
x=0
e=1e-4

while (E>e)
    f=(3*x) - (cos(x))-1
    df=3+sin(x)
    x1=x-(f/df)
    E=abs(x1-x)
    x=x1
end
mprintf("x=%.4f",x)
