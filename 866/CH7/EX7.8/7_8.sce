clc
//initialisation of variables
sigmac= 400 //N/mm^2
fs= 6
d= 2*10^3 //mm
t= 20 //mm
E= 200000 //N/mm^2
mu= 0.3
//CALCULATIONS
p= (sigmac*2*t)/(d*6)
volumestrain= (p*d)*((5/4)-mu)/(t*E)
//RESULTS
printf ('p= %.2f N/mm^2',p)
printf (' \n volumestrain=% f percent',volumestrain)
