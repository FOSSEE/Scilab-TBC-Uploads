clc;
//page 163
//problem 3.4

//Transmission power effiency n = {(m^2)/[2+(m^2)]}*100% where m is modulated index

//Given modulated indices are m1 = 0.25, m2 = 0.5 & m3 = 0.75

//Transmission power effiencies are n1, n2 & n3 respectively for m1, m2 & m3
n1 = {(0.25^2)/[2+(0.25^2)]}*100
n2 = {(0.5^2)/[2+(0.5^2)]}*100
n3 = {(0.75^2)/[2+(0.75^2)]}*100

disp('Transmission power effiency for modulated index 0.25 is '+string(n1)+ '%')
disp('Transmission power effiency for modulated index 0.5 is '+string(n2)+ '%')
disp('Transmission power effiency for modulated index 0.75 is '+string(n3)+ '%')
