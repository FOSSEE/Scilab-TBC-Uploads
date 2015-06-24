clear;
clc;
printf("\t\t\tExample Number 2.1\n\n\n");
// multilayer conduction
// illustration2.1
// solution

dx1 = 0.1;// [m] thickness of layer of common brick
k1 = 0.7;// [W/m degree celsius] heat transfer coefficient of common brick
dx2 = 0.0375;// [m] thickness of layer of gypsum plaster
k2 = 0.48;// [W/m degree celsius] heat transfer coefficient gypsum plaster
Rb = dx1/k1;// [square meter degree celsius /W] thermal resistance of brick
Rp = dx2/k2;// [square meter degree celsius /W] thermal resistance of gypsum plaster
R = Rb+Rp;// [square meter degree celsius /W] thermal resistance without insulation
R1 = R/0.2;// [square meter degree celsius /W] with insulation 
// heat loss with the rock-wool insulation is 20 percent 
Rrw = R1-R;// [square meter degree celsius /W]
k3 = 0.065;// [W/m degree celsius] heat transfer coefficient
dx3 = Rrw*k3;// [m]
printf("length of thickness is %f cm added to reduce the heat loss(or gain) through wall by 80 percent",dx3*100);

