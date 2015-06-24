clc
clear
//input data
a1=40//The cascade air angle at entry in degree
a2=65//The cascade air angle at exit in degree
C1=100//Air entry velocity in m/s
d=1.25//The density of the air in kg/m^3
sc=0.91//The pitch-chord ratio of the cascade
P0m=(17.5*9.81*10^3)/10^3//The average loss in stagnation pressure across cascade in N/m^2

//calculations
Cp=(P0m/(0.5*d*C1^2))//The pressure loss coefficient in the cascade
am=atand((tand(a2)-tand(a1))/2)//The mean air angle in degree
Cd=2*(sc)*(P0m/(d*C1^2))*((cosd(am))^3/(cosd(a2))^2)//The drag coefficient 
Cl=(2*(sc)*cosd(am)*(tand(a1)+tand(a2)))+(Cd*tand(am))//THe lift coefficient

//output
printf('(a)The pressure loss coefficient is %3.4f\n(b)The drag coefficient is %3.4f\n(c)The lift coefficient is %3.3f',Cp,Cd,Cl)
