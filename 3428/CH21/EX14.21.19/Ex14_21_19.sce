//Section-14,Example-6,Page no.-PC.32
//To calculate moles of ammonia.
clc;
P=20             //atm
V=7.0                    //L
R=0.0821                     //Latm/molK
T=373                             //K
n=((P*V)/(R*T))                    //mol
a=4.17                    //L^2atm/mol^2
b=0.0371                     //L/mol
n_1=((P+((a*n^2)/V^2))*(V-(n*b)))/(R*T)                    //mol
n_2=((P+((a*n_1^2)/V^2))*(V-(n_1*b)))/(R*T)                    //mol
n_3=((P+((a*n_2^2)/V^2))*(V-(n_2*b)))/(R*T)                         //mol
n_4=((P+((a*n_3^2)/V^2))*(V-(n_3*b)))/(R*T)                             //mol
disp(n_4,'Moles of ammonia that wil occupy 7.0L at 20 atm and 100 degree C')

