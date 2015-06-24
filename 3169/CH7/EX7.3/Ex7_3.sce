//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear all;
//example 7.3
//calculation of correction factors for atmospheric conditions

//given data
t=37//temperature(in degree celsius)
p=750//atmospheric pressure(in mmHg)

//calculation
d=p*293/(760*(273+t))

printf('The air density factor is %3.4f',d)


