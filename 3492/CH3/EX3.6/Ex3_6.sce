clc
//Chapter3
//Ex_6
//Given
h=6.6*10^-34 //in J s
c=3*10^8 //in m/s
n=1
m=0.1 //in Kg
a=1 //in m
E1=(h^2*n^2)/(8*m*a^2)
v=sqrt(2*E1/m)
disp(v,"Minimum speed of the object in m/s")
//calculation of quantum number n 
v=1 //in m/s
E_n=m*v^2/2
n=sqrt((8*m*a^2*E_n)/h^2)
disp(n,"Quantum number if the object is moving with a minimum speed of 1m/s is")
delta_E=(h^2/(8*m*a^2))*(2*n+1) //delta_E=E_n+1-En
disp(delta_E,"Separation of energy levels of the object moving with speed of 1 m/s in Joules is ")
