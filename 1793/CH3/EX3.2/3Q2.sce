clc
//initialisation of variables
V= 1.2 //m^3
M= 2350 //Kg
w= 0.086
G= 2.71
W= 1000 //kg/m^3
//calculations
R= M/V
D= M/((1+w)*V)
e= (G*W/D)-1
n= e/(e+1)
S= (w*G/e)*100
v= (M-(M/(1+w)))/W
//results
printf ('moist density = % f kg/m^3 ',R)
printf ('dry density = % f kg/m^3 ',D)
printf ('void ratio = % 3f ',e)
printf ('porosity = % 3f ',n)
printf ('Degree of saturation = % 3f ',S)
printf ('volume of water in soil sample = % 3f m^3 ',v)
