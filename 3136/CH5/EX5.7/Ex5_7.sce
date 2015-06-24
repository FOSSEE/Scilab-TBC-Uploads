clear all; clc;

disp("The average flow velocity V is determined as V=Q/A")
Q=7000
A=%pi*(1.5^2)/4
V=Q/A
printf(" Thus V = %0.2f fpm",V)
disp("Thus V is approximately equal to 4000fpm")

disp("So we have 100% effective discharge duct length Le=[2.5+(4000-2500)/1000]*D")
D=1.5
Le=[2.5+(4000-2500)/1000]*D
printf("\n Since D=1.5 ft, Le is equal to %0.2f ft",Le)

//let x=L1/Le
L1=0.75
x=L1/Le
printf("\n Since L1=0.75,L1/Le=%0.3f",x)

disp("So the line V in figure 5.18 can be used to obtain SEF1=0.255in.wg")
disp("For the two elbows we have L2/D and C2")
//let y=L2/D
L2=3
y=L2/D
printf("\n The value of L2/D is equal to %0.2f",y)
disp("From figure 5.19a,C2=4.2")

disp("Hence we can obtain SEF2=4.2*(rho*V^2/2)")
rho=0.075
V=4000
SEF2=4.2*((rho/32.2)*(V/60)^2/2)*(12/62.4)//constants used are conversion factors
printf("\n SEF2 is equal to %0.2f in.wg",SEF2)
