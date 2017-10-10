// Star Equivalent of the delta circuit

clc;
clear;

Z12=%i*5;
Z23=%i*-5;
Z31=%i*5;

Z1=(Z12*Z31)/(Z12+Z23+Z31);
Z2=(Z12*Z23)/(Z12+Z23+Z31);
Z3=(Z23*Z31)/(Z12+Z23+Z31);

printf('Star Equivalent :\n')
disp('ohms',Z1,'Z1 =')
disp('ohms',Z2,'Z2 =')
disp('ohms',Z3,'Z3 =')
