clc
//initialisation of variables
d= 16.19 //kN/m^3
w= 0.23
W= 9.81 //kN/m^3
//calculations
R= d*(1+w)
G= d/(W-d*w)
e= w*G
//results
printf ('satuarated unit weight = % 2f kN/m^3 ',R)
printf ('specific gravity = % 2f ',G)
printf ('void ratio = % 2f ',e)
