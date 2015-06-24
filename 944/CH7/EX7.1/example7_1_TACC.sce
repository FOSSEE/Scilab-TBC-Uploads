//example 7.1

clear;
clc;

//Given:
N=20;//no, of particles
N1=4;//no. of particles in E1 energy level
N2=4;//no. of particles in E2 energy level
N3=6;//no. of particles in E3 energy level
N4=3;//no. of particles in E4 energy level
N5=3;//no. of particles in E5 energy level
//To find the number of ways of distributing N particles
N!=prod(1:N);
N1!=prod(1:N1);
N2!=prod(1:N2);
N3!=prod(1:N3);
N4!=prod(1:N4);
N5!=prod(1:N5);
n=N1!*N2!*N3!*N4!*N5!;
W=N!/n;//no. of ways of distributing
disp(W,'The no. of ways of distributing the particles is ');







