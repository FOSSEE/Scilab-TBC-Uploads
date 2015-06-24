clc

w=20//m
q=1.6*10^-19
t=60//sec
nx=2.85*10^19
disp(nx,"nx in ions/cm^3")    //havent solved in textbook 
d=5*10^14//ions/cm^2
Q=d*%pi*(20/2)^2
disp(Q,"Q in ions is= ")
I=(q*Q)/t
disp(I,"I in A is= ")


