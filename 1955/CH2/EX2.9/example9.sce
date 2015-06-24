clc
clear
//input data
W=30000//The weight of the jet plane in N
A=20//The area of the wing in m^2
C=250*5/18//The speed of the jet plane in m/s
P=750//The power delivered by the engine in kW
d=1.21//Density of the air in kg/m^3

//calculations
L=W//The lift force on the plane is equal to the weight of the plane in N
Pd=0.65*P//The power required to overcome the drag resistance in kW
D=(Pd/C)*10^3//The drag force on the wing in N
Cd=D/(0.5*d*A*C^2)//The coefficient of drag for the wing 
Cl=L/(0.5*d*A*C^2)//The coefficient of lift for the wing 

//output
printf('(a)The coefficient of lift on the wing is %3.3f\n(b)The coefficient of drag on the wing is %3.3f',Cl,Cd)
