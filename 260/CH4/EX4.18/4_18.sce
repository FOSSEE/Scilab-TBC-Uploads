//Eg-4.18
//pg-190

clc;
clear;

//using the function graeffe.sci created.

exec graf.sci
clc
eps1 = 0.01;
eps2 = 0.001;


printf('The solution to the problem (a) is \n')
A1 = [1 3];
q1 = graf(A1,eps1)
printf('------------------------------------------------------\n')

printf('The solution to the problem (b) is \n')
A2 = [1 -4 3];
q2 = graf(A2,eps1)
printf('------------------------------------------------------\n')

printf('The solution to the problem (c) is \n')
A3 = [1 -7 14 -8];
q3 = graf(A3,eps1);
printf('------------------------------------------------------\n')

printf('The solution to the problem 2 is \n')
A = [1 -0.01678 1.76232*10^-5 -4.17671*10^-9];
q4 = graf(A,eps2);
