clc
//initialisation of variables
v=10//ft^3
p=100//lb/in^2
p1=18//lb/in^2
v1=50//ft^3
n=log(p/p1)/log(5)
gama=1.4//air
//CALCULATIONS
W=[144*(p*v-p1*v1)]/(n-1)//ft lb
H=(gama-n)/(gama-1)*W//ft lb
E=W-H//ft lb
//RESULTS
printf('The heat supplied and the change of internal energy=% f ft lb',E)
