//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 9.14w
//calculation of the velocity with which the board recoils 

//given data
m1=25//mass(in kg) of the boy
m2=10//mass(in kg) of the board
v1=5//velocity(in m/s) of the boy

//calculation
v=(m1*v1)/m2//principle of conservation of linear momentum
vsep=v1+v//velocity of separation

printf('the velocity with which the board recoils is %3.1f m/s',v)
printf('\nthe velocity of separation of the boy and the board is %3.1f m/s',vsep)

