clc
//Initialization of variables
c=[1 2 4 7 9]
hbyc=[0.28 0.36 0.503 0.739 0.889]
R=8.3145 //J/K mol
T=298 //K
g=9.81 //m/s^2
d=0.9998 //g/cm^3
//calculations
plot(c,hbyc)
xlabel('c')
ylabel('hbyc')
vector=regress(c,hbyc)
intercept=vector(1)
intercept=intercept*10^-2
M=R*T/(d*g*intercept)
//results
printf('Molar mass of the enzyme is close to %d kDa',M/1000 -3)
