clear
clc
disp('Exa-12.6');
t1=4.55*10^9;t2=7.04*10^8;       //given values of time at 2 different instants
age=t1/t2;
r=2^age;
printf('The original rock hence contained %.1f*Na atoms of 235U where Na is the Avagadro''s Number=6.023*10^23',r);