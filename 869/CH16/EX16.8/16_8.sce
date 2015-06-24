clc
//initialisation of variables
l= 15 //ft
Al= 80 //kips
El= 60 //kips
Ys= 33 //ksi
e= 4 //in
//CALCULATIONS
A= 14.4
rmin= 2.54
Zxx= 54.6
lbyr= l*12/rmin
Smax= ((Al+El)/A)+El*e/Zxx
//RESULTS
printf ('Maximum stress %.2f ksi',Smax)
disp("10 WF 49 is the suitable one")
