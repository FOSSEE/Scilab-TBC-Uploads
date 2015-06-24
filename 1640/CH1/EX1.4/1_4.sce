clc 
//initialisation of variables
lm= 2 //ft
lw= 5 //ft
lo= 8 //ft
so= 0.75
p= 40 //lb/in^2
w= 62.4 //lbs/ft^3
sm= 13.6
//CALCULATIONS
h= p*144/w
Pd= (h-lm*sm)
Pc= Pd-lw
Pb= Pc-lo*so
Pg= Pb*w/144
//RESULTS
printf ('Reading of the pressure guage at the top of tank = %.1f lb/in^2 ',Pg)
