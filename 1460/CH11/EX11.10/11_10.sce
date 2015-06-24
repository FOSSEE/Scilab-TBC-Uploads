clc
//initialization of variables
P=300 //lb/in^2
P2=14.7 //lb/in^2
T=4540+460 //R
w=100 //lbm/sec
g=1.25
MW=30
R=1544
//calculations
R=R/MW
Pratio=P2/P
V4=sqrt(2*g*32.2*51.5*T*(1-(Pratio)^((g-1)/g))/(g-1)) 
Fn=w*V4/32.2
//results
printf("Thrust = %d lb",Fn)
//The answer in the textbook is a bit different due to rounding off error.
