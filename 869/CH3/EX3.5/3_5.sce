clc
//initialisation of variables
Gt= 0.25 //in
St= 0.25 //in
Gw= 3.5 //lb/sq ft
Sw= 10 //lb/sq ft
Sb= 36 //in
Sb1= 18 //in
Sb2= 12 //in
Sb3= 6 //in
Sy1= 6 //in
Sy2= 12 //in
Sy3= 6 //in
Gb= 1 //ft
Sh= 24 //in
Gh= 1 //ft
//CALCULATIONS
W= ((Sb*Sh)/(12*12)-(Gh*Gb))*Sw+(Gh*Gb)*Gw
x= ((Sb*Sh)*Sw*(Sb/24)/(12*12)-(Gh*Gb)*Sw*((Sb1+(Sb2/2))/12)+(Gh*Gb)*Gw*((Sb1+(Sb2/2))/12))/W
//RESULTS
printf ('centre of gravity = %.2f ft to the right of y-axis',x)
