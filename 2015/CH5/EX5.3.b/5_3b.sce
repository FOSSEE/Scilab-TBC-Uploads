clc
//initialisation of variables
R=0.2897 //kj/kgk
g=1.4
t1=313 //temparature in k
p1=20 //pressure in bar
p2=10.56 //pressure im bar
cp=1.0138 //kj/kgk
a=5*10^-4
//CALCULATIONS
rc=(2/(g+1))^(g/0.4)
t2=t1*(p2/p1)^((g-1)/g)
c2=44.72*(cp*(t1-t2))^(0.5)
rho=p2*100/(R*t2)
m=rho*c2*a
//RESULTS
printf('mass flow rate and velocity of air at exit are %2fkg/s and %2fkg/m*m*m',m,rho)
