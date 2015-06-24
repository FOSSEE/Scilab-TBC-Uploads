clear
clc

e=1e-5
x=1
E=100
while (E>e)
    x1=.5*(7+log10(x))
    E=abs(x-x1)
    x=x1
end

mprintf("x = %f",x)
