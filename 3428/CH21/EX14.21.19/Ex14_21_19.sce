//Section-14,Example-6,Page no.-PC.32
//To calculate moles of ammonia.
clc;
P=20
V=7.0
R=0.0821
T=373
n=((P*V)/(R*T))
a=4.17
b=0.0371
n_1=((P+((a*n^2)/V^2))*(V-(n*b)))/(R*T)
n_2=((P+((a*n_1^2)/V^2))*(V-(n_1*b)))/(R*T)
n_3=((P+((a*n_2^2)/V^2))*(V-(n_2*b)))/(R*T)
n_4=((P+((a*n_3^2)/V^2))*(V-(n_3*b)))/(R*T)
disp(n_4,'Moles of ammonia that wil occupy 7.0L at 20 atm and 100 degree C)

