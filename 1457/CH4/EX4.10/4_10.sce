clc
//Initialization of variables
V=60 //fps
theta=15 //degrees
ra=6/12 //ft
rb=8/12 //ft
B=1.5/12 //ft
//calculations
Vra=V*sind(theta)
Q=2* %pi*ra*B*Vra
Vratio=ra/rb
Vb=Vratio*V
flow=(V^2 - Vb^2)/(2*32.2)
//results
printf("Flow rate = %.2f cfs",Q)
printf("\n Velocity at b = %d fps",Vb)
printf("\n Pressure head = %.1f ft",flow)
