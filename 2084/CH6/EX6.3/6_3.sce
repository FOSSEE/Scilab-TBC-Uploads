//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 6.3
//calculation of the force of friction exerted by the horse and condition of boy for sliding back

//given data
M=30//mass(in kg) of the boy
a=2//average acceleration(in m/s^2) of the horse
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
fs=M*a//Newton's second law
musmax=fs/(M*g)//equation of static friction

printf('the force of friction exerted by the horse on the boy is %3.2f N',fs)
printf('\nfor the boy sliding back during acceleration, the value of coefficient of static friction is less than %3.2f ',musmax)
