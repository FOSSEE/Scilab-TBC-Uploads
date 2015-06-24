clear
clc

P=50
pe=100


E=10
x=1
e=1e-3

d0=30/180 * %pi
while (E>e)
    f=cos(d0)+cos(x) - ((%pi - d0-x)*sin(x))
    df= (-%pi+d0+x)*cos(x)
    x1=x-(f/df)

    E=abs(x1-x)
    x=x1
end
d1=x1 * 180/%pi

P1=sind(d1) *pe
Pr=P1-P
mprintf("\nPower Required = %.2f MW",Pr)
