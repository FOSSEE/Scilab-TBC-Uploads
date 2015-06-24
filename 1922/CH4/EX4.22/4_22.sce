clc
clear
//Initialization of variables
pr=4
k=1.4
ta=298 //K
pa=0.1 //Mpa
pdr=0.01
tc=900 //K
pri=0.005 //Mpa
//calculations
pb=pr*pa
nji=1- (pr)^((1-k)/k)
tb=ta*(pb/pa)^((k-1)/k)
pc=pb-pdr
pd=pa+pri
td=tc*(pd/pc)^((k-1)/k)
//results
p=[pa pb pc pd]
t=[ta tb tc td]
printf("ideal thermal efficiency = %.3f ",nji)
disp("pressure (Mpa) = ")
format('v',6);p
disp(p)
disp("temperature (K) = ")
format('v',6);t
disp(t)
