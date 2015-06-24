clc
//initialisation of variables
clear
r= 1.4
Mai= 0.5 //ft/sec
T= 582 //R
psi= 3040 //lbf/in^2
R= 53.3 //ft lbf/lbm
g= 32.2 //ft/sec^2
Vwi= 300 //ft/sec
m= 35 //lb/sec
rm= 0.7 //ft
rp= 4.25
w= 1200 //rev/sec
cp= 0.24
J= 778 //lb
//CALCULATIONS
tr= 1+0.5*(r-1)*Mai^2
Ti= T/tr
pr= tr^(r/(r-1))
pi= psi/pr
ai= pi/(R*Ti)
Vi= Mai*(r*R*g*Ti)^0.5
Vai= sqrt(Vi^2-Vwi^2)
h= m/(2*%pi*ai*rm*Vai)
pr1= rp^(1/12)
Vwo= Vwi+(pr1^((r-1)/r)-1)*(cp*J*g*T/(rm*w))
BO= acotd((Vwo-w*rm)/Vai)
//RESULTS
printf ('Absolute air velocity = %.f ft/sec',Vi)
printf ('\n air velocity = %.f ft/sec',Vai)
printf ('\n Blade height = %.3f ft',h)
printf ('\n velocity = %.f ft/sec',Vwo)
printf ('\n outlet balde angle = %.1f degrees',BO)
