//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
g=6//ft
g1=50//ft
d=10//ft
w1=10//ft
w2=20//ft
w3=62.5//ft
t=w3*60*5//lbf
t2=8.37//tonf
t1=g1+t//lbf
H=26.4//ft
//CALCULATIONS
M=t*d/3//lbf ft
D=w3*w2*g*d//lbf
M1=D*(w2/3)//lbf ft
f=D-t//lbf
R=(M1-M)/f//ft
//RESULTS
printf('the moment of resultant force about gate base=% f ft',R)
