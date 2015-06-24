//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.9w
//calculation of the position of bridges in sonometer wire

//given data
//nu1 : nu2 : nu3 = 1 : 2 : 3
L=1//length(in m) of the sonometer wire
m1=1//taking value from ratio
m2=2//taking value from ratio
m3=3//taking value from ratio

//calculation
//from formula of fundamental frequency.....nu = (1/(2*L))*sqrt(F/mu)
L1=L/((1/m1)+(1/m2)+(1/m3))//position of bridge 1 from one end
L2=L1/2
L3=L1/3//position of bridge 2 from the other end

printf('the position of bridge 1 from one end is %3.2f m',L1)
printf('\nthe position of bridge 2 from the other end is %3.2f m',L3)
