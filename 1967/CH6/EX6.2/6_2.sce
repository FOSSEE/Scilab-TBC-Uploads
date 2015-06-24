clc
//initialisation of variables
clear
Qe= 4.029
Qe1= -37.02
Qe2= 4.695*10^4
T= 300 //K
R= 1.98 //cal /mol K
Qe3= 4.158
Qe4= -200.8
Qe5= 2.546*10^5
T1= 500 //K
//calculations
Ce= R*((Qe2/Qe)-(Qe1/Qe)^2)/T^2
Ce1= R*((Qe5/Qe3)-(Qe4/Qe3)^2)/T1^2
//RESULTS
printf ('electronic contribution = %.3f cal deg^-1.g.atom^-1',Ce)
printf ('\n electronic contribution = %.3f cal deg^-1.g.atom^-1',Ce1)
