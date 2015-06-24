//The value mentioned in the part 'c' of the question is 45MN^3 but that assumed in the solved problem is 50MN^3
clear all; clc;
disp("Ex 1_1")
disp("Part a :-")
a=10//magnitude of force 1 in mN
a1=10*10^-3//magnitude of force 1 in N
b=5//magnitude of force 2 in GN
b1=5*10^9//magnitude of force 2 in N
k1=a1*b1//answer in N^2
k=k1/10^6//answer in kN^2
printf('The answer is %g kN^2',k)
disp("Part b :-")
c=100//magnitude of length in mm
c1=100*10^-3//magnitude of length in m
d=0.5//magnitude of force in MN
d1=0.5*10^6//magnitude of force in N
l1=c1*d1^2//answer in mN^2
l=l1/10^9//answer in GmN^2
printf('The answer is %g GmN^2',l) 
disp("Part c :-")
e=50//magnitude of force in MN^3
e1=50*10^6//magnitude of force in N^3
f=500//magnitude of weight in Gg
f1=500*10^6//magnitude of weight in kg
m1=e1/f1//answer in N^3/kg
m=m1*10^3//answer in kN^3/kg
printf('The answer is %g kN^3/kg',m)
