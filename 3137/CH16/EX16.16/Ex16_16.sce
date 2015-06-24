//Initilization of variables
mc=7.25 //kg
d=0.9 //m
la=0.2 //m
ma=9 //kg
F=45 //N
ay=0 //m/s^2
g=9.8 //m/s^2
//Calculations
I=2*(0.5*mc*(d/2)^2)+0.5*ma*(la/2)^2 //kg-m^2
//Using the equations of motion
Na=(2*mc+ma)*g //N
//Simplfying using radial velocity formula
//Solving the two equations using matrix method
A=[-1,-(2*mc+ma);(d/2),-I/(d/2)]
B=[-F;F*(la/2)]
C=inv(A)*B
F=C(1) //N
ax=C(2) //m/s^2
//Result
clc
printf('The computation yields ax=%f m/s^2',ax)
