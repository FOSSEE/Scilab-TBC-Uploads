clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
vel=800*10^3 /3600
sm=13.57
sl2=12.2
//calculations
sl=sl2/(g*rho)
y=vel^2 /(2*g*(sm/sl -1))
//results
printf("length of manometer = %d cm",y*100)
