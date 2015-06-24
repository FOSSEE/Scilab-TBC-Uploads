
clc
//initialisation of variables
g=32.2//ft/sec^2
n=(0.01*30.5)/(453.6*32.2)
H=2//ft
D=1/12
//CALCULATIONS
p=62.4/g
v=n/p
k=v/(D*sqrt(2*g*H))
//RESULTS
printf (' value of non dimensional constant= %.2e',k)
