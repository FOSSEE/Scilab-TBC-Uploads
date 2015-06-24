clc 
//Initialization of variables
s1=0.85
s2=13.6
z1=30
z2=15
z3=20
z4=35
z5=60
//calculations
dHa=s1*(z1+z5+z3-z4) +s2*z4 -z3+s2*z2-s1*(z1+z2)
Pd=1000*9.81*dHa/100
//results
printf("Pressure difference = %.2f kN/m^2",Pd/1000)
