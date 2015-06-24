clc

Cs=10^16//boron atoms/cm^3
k0=0.8
d=2.53//g/cm^3
aw=10.8//g/mol
s=60*10^3//kg
Ct=Cs/k0
disp(Ct,"Ct in boron atoms/cm^3 is= ")
v=s/d
disp(v,"v in cm^3 is= ")
tb=Ct*v
disp(tb,"tb in boron atoms is= ")
tb1=(tb*aw)/(6.02*10^23)
disp(tb1,"tb1 in g of boron is= ")
