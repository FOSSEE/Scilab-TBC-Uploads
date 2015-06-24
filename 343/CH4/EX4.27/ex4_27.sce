clc
kw=15          //Assigning values to parameters
t=acosd(0.8)
kva=kw/cosd(t)
x=kva/25
wcf=500
cl1=0.75*0.75*wcf
kw=20
t=acosd(0.9)
kva=kw/cosd(t)
x=kva/25
cl2=x*x*500
kw=10
t=acosd(0.9)
kva=kw/cosd(t)
x=kva/25
cl3=x*x*500
tec=cl1*6+cl2*10+cl3*4
tei=400*24
eo=330000
n=eo*100/(eo+tei+tec)
disp(n,"The efficiency is")