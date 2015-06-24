clear
clc

Pm=1
Pe1=.25
d1=round(asin(Pe1)*1000)/1000

Pe2=.5
d2=round(asin(Pe2)*1000)/1000

d3=0;

A1=((Pe2 * d2)+ ( 1 * cos(d2)))- ((Pe2 * d1)+ ( 1 * cos(d1)))

E=10
x=.811
e=1e-3
a=Pe2
b=1
c=A1 -((Pe2 * d2)+ ( 1 * cos(d2)))

while (E>e)
//for (i=1:4)
    f=(a*x) +  (b * cos(x)) + c
    df=a - (b*sin(x))
    x1=x-(f/df)
    disp(x1,f,df)
    E=abs(x1-x)
    x=x1
end
d3=x1 * 180/%pi

mprintf("\ndelta 3 = %.1f deg",d3)
