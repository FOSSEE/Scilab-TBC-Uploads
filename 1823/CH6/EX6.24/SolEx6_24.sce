//Example 6.24 page no 191
clear
clc
R11=90*10^3
R12=100*10^3
R22=90*10^3
R21=10*10^3
Av1=0.9879
hfe=100
Rl=5*10^3
Rc=5*10^3
hie=1*10^3
Rb1=((R11*R12)/(R11+R12))/1000
printf("\n The value of Rb1=%0.3f Kohm" ,Rb1)
Rb2=((R22*R21)/(R22+R21))/1000
printf("\n The value of Rb2=%0.3f Kohm" ,Rb2)
Av2=-((hfe*Rl*Rc)/(hie*(Rl+Rc)))
printf("\n The value of Av2=%0.3f " ,Av2)
Av=Av1*Av2
printf("\n The value of Av=%0.3f Kohm" ,Av)
