clc
//initialisation of variables
H= 900 //ft
P= 1665 //h.p
N= 755
//CALCULATIONS
P1= P/(H)^1.5
N1= N/(H)^0.5
Ns= N*sqrt(P)/H^1.25
//RESULTS
printf ('Unit power= %.4f h.p',P1)
printf (' \n Unit speed= %.1f rev/min',N1)
printf (' \n Specific speed= %.2f rev/min',Ns)
