clc
//initialisation of variables
vp= 0.75 //in^3
n= 9 //strokes
t= 10 //sec
d= 2 //in
Sc= 2 //in
//CALCULATIONS
Qt= vp*n/(t*3.85)
Ac= %pi*d^2/4
Qa= Ac*Sc/(t*3.85)
s= Qt-Qa
s1= (1-(Qa/Qt))*100
ev= Qa*100/Qt
//RESULTS
printf ('Slip = %.3f gpm',s)
printf (' \n Slip perecentage= %.f percent',s1)
printf (' \n volumetric efficiency = %.f perecnt',ev)
