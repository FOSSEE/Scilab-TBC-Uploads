//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 2.4
//calculation of breakdown voltage of a spark gap

//given data
A=15//value of A(in per cm)
B=360//value of B(in per cm)
d=0.1//spark gap(in cm)
gama=1.5*10^-4//value of gama
p=760//value of pressure of gas(in torr)

//calculation
//from equation of breakdown voltage
V=(B*p*d)/(log((A*p*d)/(log(1+(1/gama)))))

printf('the value of breakdown voltage of the spark gap is %d V',V)
//correct answer is 5625 V
