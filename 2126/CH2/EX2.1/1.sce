clc
clear

//Input data
do1=1.12 //Density of air i reservoir in kg/m^3
ao1=500 //Velocity of sound in reservoir in m/s
d=0.01 //Throat diameter in m 
k=1.4 //Adiabatic Constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
To1=ao1^2/(k*R) //Stagnation temperature in K
Po1=do1*R*To1 //Stagnation pressure in Pa
p1=0.528 //Ratio of critical pressure to Stagnation pressure from gas tables @M=1
Pt=(Po1*p1)*10^-5 //Throat pressure in bar
t1=0.834 //Ratio of critical temperature to Stagnation temperature from gas tables @M=1
Tt=To1*t1 //critical temperature in K
d_t=(Pt*10^5)/(R*Tt) //Density of air at throat in kg/m^3
a_t=sqrt(k*R*Tt) //Sound velocity at throat in m/s 
Ct=a_t //Air velocity t throat in m/s, Since M=1
A_t=%pi*d^2/4 //Throat area in m^2 
m=d_t*A_t*Ct //Maximum mass flow rate in kg/s

//Output
printf('(A)Maximum mass flow rate is %3.5f kg/s\n (B)Pressure and temperarature at the throat are %3.3f bar and %3.4f K',m,Pt,Tt)
