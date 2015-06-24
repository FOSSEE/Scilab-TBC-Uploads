clc
// Intialization of variables
Q = 600/60 // ft^3/s
D = 8/12 //ft
A = %pi*(D^2)/4 //ft^2
d = 2.38*(10^-3) // slugs/ft^3
u = 3.74*(10^-7) // lb.s/ft^2
f = 0.017
g = 32.2 //ft/s^2
l = 30 //ft
d1 = 7.65*(10^-2) //lb/ft^2
//Calculations
V = Q/A //ft/s
Re = d*V*D/u 
Hp = f*l*(V^2)/(D*2*g) //ft
Pa = d1*Hp*Q/550 //hp
hL = (0.5+1.1+1.0)*(V^2)/(2*g) // ft
Pa1 = Pa + (d1*Q*hL)/550 //hp
//Results
printf("the horse power needed to overcome the head loss is %.2e hp",Pa)
printf("\nthe horse power needed to overcome the both major and minor losses are %.2e hp",Pa1)
