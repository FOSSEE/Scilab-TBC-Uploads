clc
//Initialization of variables
z=20000 //ft
rate=-0.00356 //F/ft
T=59 //F
P=14.7 //psia
gamma=0.076 //lb/ft^3
//calculations
P2=P*144 - gamma*(z)
P2f=P2/144
P3=P*exp(-gamma*z/(P*144))
P4=((P*144)^0.285 -0.285*gamma*z*(P*144)^(-0.715))^(1/0.285)
P4f=P4/144.
P5=P*((460+T)/(460+T+rate*z))^(gamma*(T+460)/(P*144*rate))
//results
printf ('Constant density')
printf('\n Final pressure = %.2f psia',P2f)
printf('\n Isothermal')
printf('\n Final pressure = %.2f psia',P3)
printf('\n Isentropic')
printf('\n Final pressure = %.2f psia',P4f)
printf('\n Linear decrease')
printf('\n Final pressure = %d psia',P5+1)
