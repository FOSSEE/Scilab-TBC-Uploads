
clc
//initialisation of variables
clear
Vrms = 10^2 //V
Irms= 10^2 //amp
pf= 0.5
pf1= 0.7
r= 1.41
//CALCULATIONS
PA= Vrms*Irms*pf
QA= -sqrt((Vrms*Irms)^2-PA^2)/1000
a= acosd(pf1)
QB= PA*tand(a)/1000
P= 2*PA/1000
Q= QA+QB
o= atand(Q/P)
pf2= cosd(o)
A= o+69.18
S= sqrt(P^2+Q^2)
I= S*r
//RESULTS
printf ('Phasor Current = %.f A',I)
printf ('\n Angle = %.2f degrees',A)
