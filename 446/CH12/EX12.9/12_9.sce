clear
clc
disp('Ex-12.9');
m23Ne=22.994465; //mass of various elements
m23Na=22.989768;
c2=931.5;          //value of c^2
Q=(m23Ne-m23Na)*c2;     //Q of the reaction
printf('Hence the maximum kinetic energy of the emitted electrons is %.3f MeV',Q);