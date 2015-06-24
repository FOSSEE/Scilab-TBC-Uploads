clc
clear
//input data
C1=75//Velocity of air entry in m/s
a1=48//Air angle at entry in degree
a2=25//Air angle at exit in degree
cs=0.91//The chord-pitch ratio 
P0m=(11*9.81*10^3)/10^3//The stagnation pressure loss in N/m^2
d=1.25//The density of the sair in kg/m^3

//calculations
Cp=(P0m/(0.5*d*C1^2))//The pressure loss coefficient 
am=atand((tand(a1)+tand(a2))/2)//The mean air angle in degree
Cd=2*(1/cs)*(P0m/(d*C1^2))*((cosd(am))^3/(cosd(a1))^2)//The drag coefficient 
Cl=(2*(1/cs)*cosd(am)*(tand(a1)-tand(a2)))-(Cd*tand(am))//THe lift coefficient

//output
printf('(a)The pressure loss coefficient is %3.4f\n(b)The drag coefficient is %3.4f\n(c)The lift coefficient is %3.3f',Cp,Cd,Cl)
