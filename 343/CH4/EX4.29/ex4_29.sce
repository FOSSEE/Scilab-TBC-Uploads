clc
nm=0.98          //Assigning values to parameters
kva=15
x=1
pf=1
wi=((x*kva*pf/nm)/2-(x*kva*pf)/2)
wcu=wi
kw=2
pf=0.5
kva=kw/pf
cl1=(kva/15)*(kva/15)*wi
kw=12
pf=0.8
kva=kw/pf
cl2=0.153
kw=18
pf=0.9
kva=kw/pf
cl3=(kva/15)*(kva/15)*wi
tec=cl1*12+cl2*6+cl3*6
tei=3.672
eo=204
n=eo*100/(eo+tei+tec)
disp(n,"The efficiency is")