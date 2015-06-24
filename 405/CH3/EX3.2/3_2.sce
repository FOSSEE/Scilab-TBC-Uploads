clear;
clc;
printf("\t\t\tExample Number 3.2\n\n\n");
// cubical furnace
// illustration3.2
// solution

a = 0.5;// [m] length of side of cubical furnace
Ti = 500;// [degree celsius] inside furnace temperature
To = 50;// [degree celsius] outside temperature
k = 1.04;// [W/m per degree celsius] thermal conductivity of fireclay brick 
t = 0.10;// [m] wall thickness
A = a*a;// [square meter] area of one face 
// we compute the total shape factor by adding the shape factors for the walls, edges and corners
Sw = A/t;// [m] shape factor for wall
Se = 0.54*a;// [m] shape factor for edges
Sc = 0.15*t;// [m] shape factor for corners
// there are six wall sections, twelve edges and eight corners, so the total shape factor S is
S = 6*Sw+12*Se+8*Sc;// [m]
// the heat flow is calculated as 
q = k*S*(Ti-To);// [W]
printf("heat lost through the walls is %f kW",q/1000);
