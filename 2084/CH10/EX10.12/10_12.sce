//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.12
//calculation of the kinetic energy of the sphere

//given data
M=200*10^-3//mass(in kg) of the sphere
vcm=2*10^-2//speed(in m/s) of the sphere

//calculation
//kinetic energy is  K = (Icm*w*w/2) + (M*vcm*vcm/2)
//taking Icm = (2*M*r*r*w*w/5) and w=vcm/r
K=(M*vcm*vcm/5)+(M*vcm*vcm/2)//kinetic energy

printf('the kinetic energy of the sphere is %3.1e J',K)
