
clc
//initialisation of variables
r=0.60//in
v=3//in
p=15.4//lb
r=5//in
P=2000//r p m
V=19000//B.Th.U  Per lb
lam=1.41 //lb
n=0.4831//percent
P=15.4/4//lb
H=P*V//B.Th.U
l=4.5//lb
A=9//lb
S=1000//lb
//CALCULATIONS
R=0.60*n*100//percent
C=H*R//B.Th.U
I=(C*778)/(60*33000)//lb
P1=(I*12*4*33)/(l*A*%pi)//lb/in^2
//RESULTS
printf('The mean efficity pressure=% f lb/in^2',P1)
