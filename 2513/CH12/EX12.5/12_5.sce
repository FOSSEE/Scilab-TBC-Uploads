clc
//initialisation of variables
p=90//deg
h=48//in
p1=100//psig
P=(1/2*%pi)*h^2*p1*0.7071//lb
r=3000/54-31//ft
s=9000//psi
l=170//in
b=6.5*10^-6//ft
w=46//ft
w1=1000//ft
//CALCULATIONS
D=(1/4*%pi)*h^2*p1//lb
P=[r]*h^2//lb
T=%pi*h*(1/4)*s//lb
T1=(1/2)*l//tons
Del=b*w*w1//ft per
//RESULTS
printf('the accorance with unless otherwise stated=% f ft per',Del)
