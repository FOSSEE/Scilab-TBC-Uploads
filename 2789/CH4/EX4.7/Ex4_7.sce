clear;
clc;

//page no. 113

d = 10;// in
p = 40;//psi
G = 5;//cfs
y1 = 92.4;//ft
k1 = -11.3;//ft
k2 = 92.4;//ft
k3 = 3.2;//ft
k4 = 10.1;//ft

E_p = k4+y1+d-k1-k3;
hp = G*62.4*E_p/550;

printf('Pump horsepower = %.1f hp',hp);
