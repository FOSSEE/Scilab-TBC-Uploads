//Eg-10.8
//pg-445

clear
clc

T = [0 80 146.9 207.6 265 320.2 373.7 426.1 477.7 528.3 578.1 627.1 675.3];

y = [0 500 1000 1500 2000 2500 3000 3500 4000 4500 5000 5500 6000];

exec lagrange.sci

p = lagrange(y,T,3)

printf('The third order polynomial interpolating the given data points is \n')
disp(p)

D = [625 2143 3215 5785];
k = horner(p,D)

printf('\n\nThe values of temperature at given EMF values are \n')
disp(k)