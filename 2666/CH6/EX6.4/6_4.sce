clc
//initialisation of variables
p=2500//psia
v=0.127//cu ft
h=0.0037//ft
x=0.1021//ft
w=1091.1//lb
q=360.5//ft lb
//CALCULATIONS
X=h/x//percent
H=w-X*q//Btu per lb
//RESULTS
printf('The specific enthaly=% f Btu per lb',H)
