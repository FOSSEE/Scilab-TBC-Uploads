clc
kw=400          //Assigning values to parameters
pf=0.8
kva=kw/pf
cl1=4.5
kw=300
pf=0.75
kva=kw/pf
cl2=(kva/500)*(kva/500)*4.5
kw=400
pf=0.8
kva=kw/pf
cl3=(kva/500)*(kva/500)*4.5
tec=cl1*6+cl2*10+cl3*4
tei=84
eo=5800
n=eo*100/(eo+tei+tec)
disp(n,"The efficiency is")