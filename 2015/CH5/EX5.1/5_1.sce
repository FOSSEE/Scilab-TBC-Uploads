clc
//initialisation of variables
c=300 //velocity in m/s
cp=1.005 //kj/kgk
g=1.4
t=478 //static temparature in k
p=15 //static pressure in bar
//CALCULATIONS
t0=t+((c)^2/(2*cp*1000))
x=(t0/t)^(g/(g-1))*p
//RESULTS
printf('stagnation temparature and stagnation pressure is %2fk and %2fbar',t0,x)
