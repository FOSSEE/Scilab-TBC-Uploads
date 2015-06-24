clc
//initialisation of variables
p= 5 //tons
dt= 0.75 //in
db= 0.5 //in
b= 0.5 //in
h= 2 //in
//CALCULATIONS
Sc= p*2000/((%pi/4)*(dt^2))
Sr=  p*2000/(b*h)
Sb=  p*2000/(2*(%pi/4)*db^2)
//RESULTS
printf ('Stress in circular scetion= %.2f psi tension',Sc)
printf (' \n Stress in rectangular section=%.2f psi tension',Sr)
printf (' \n Stress in bolt=%.2f psi tension',Sb)
