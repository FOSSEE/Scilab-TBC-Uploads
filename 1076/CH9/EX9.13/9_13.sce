clear
clc
E=10
x=1
e=1e-5

while (E>e)
    f=(2*x) - (.43429 * log(x))-7
    df=2-(.43429 /x)
    x1=x-(f/df)
    E=abs(x1-x)
    x=x1
end
mprintf("x=%f",x)
