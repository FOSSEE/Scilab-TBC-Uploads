clc
//initialisation of variables
p=100//psia
e=1100//Btu per pound
x=87.2//in
z=888.8//in
p1=1.6026//lb
v=1.1286//lb
//CALCULATIONS
X=x/z//percent
S=p1-X*v//units per lb
//RESULTS
printf('the specific enthalpy=% f units per lb',S)
