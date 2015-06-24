//Exa 10.4
clc;
clear;
close;
//given data :
H=200;//in Km
D=4000;//in Km
fc=5;//in MHz
f_muf=fc*sqrt(1+(D/(2*H))^2);//in MHz
disp(f_muf,"MUF for the given path in MHz : ");
//Note : Answer in the book is wrong.