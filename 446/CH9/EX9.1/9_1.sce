clear
clc
disp('Ex-9.1');
E=-2.7;
K=9*(10^9)*((1.6*(10^-19))^2)/(0.106*10^-9);// taking all the values in meters. 1/(4*pi*e0)= 9*10^9 F/m
q=((K-E*10^-9)/(4*K))*10^-9;                //balancin by multiplying 10^-9 on numerator. to eV.vm terms
printf('Charge on the sphere required is %.2f times the charge of electron.',q);
