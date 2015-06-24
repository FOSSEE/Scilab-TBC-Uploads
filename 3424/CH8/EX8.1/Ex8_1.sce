clc
// Intialization of variables
Re1 = 2100 // Reynold's number
Re2 = 4000 // Reynold's number
U = 2.73 * (10^(-5)) // lb.s/ft^2
D = 0.73/12 //ft
d = 1.94 //slugs/ft^3
Vo = 0.0125 //ft^3
// Calculations
V1 = Re1*U/(D*d) // ft/s
t1 = Vo/((%pi/4)*(D^2)*V1) //s
V2 = Re2*U/(D*d) // ft/s
t2 = Vo/((%pi/4)*(D^2)*V2)//s
// results
printf("minimum time required to fill the glass for laminar flow is %.2f s",t1)
printf("\n maximum time required to fill the glass for turbulent flow is %.2f s",t2)
