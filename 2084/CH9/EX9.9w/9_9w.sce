//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 9.9w
//calculation of the distance moved by the bigger block

//given data
L=2.2//length(in m) of the base
n=10// mass of bigger block is 'n' number of times the mass of smaller block

//calculation
//centre of mass at rest initially will remain in horizontal position thus
//M*(L-X)=10*M*X
X=L/(n+1)

printf('distance moved by the bigger block at the instant the smaller block reaches the ground is %3.1f m',X)
