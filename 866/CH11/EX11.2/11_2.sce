clc
//initialisation of variables
d= 200 //mm
l= 2 //m
Shearstressmax= 200 //N/mm^2
Maximumangleoftwist= 2 //degrees
Maxtorque= 30/2 //KNm
G= 25000 //N/mm^2
//CALCULATIONS
tmin= (Maxtorque*10^6*4)/(2*%pi*d^2*Shearstressmax)
x1=l/2
c=0
dtbydx= (Maxtorque*%pi*200*16)/(4*%pi^2*d^4*G*tmin)
theta= (Maxtorque*%pi*200*16)/(4*%pi^2*d^4*G*tmin)*x1+c
tminimum= (Maxtorque*%pi*200*10^9*180*16)/(4*%pi^2*d^4*G*Maximumangleoftwist*%pi)*x1
//RESULTS   
printf ('minimum allowable thickness= %.1f mm',tminimum)

