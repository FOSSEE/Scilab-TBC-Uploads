clc
//Initialization of variables
ta=780 //F
tr=80//F
Qa=195 //Btu
pd=14.7 //psia
R=1.986/29
k=1.4
J=778
g=32.174
//calculations
etat=(ta-tr)/(ta+459.7)
W=etat*Qa
vd=R*(tr+460)/pd
va=vd*exp(-(Qa-W)/R/(tr+460))
vb=va*((tr+460)/(ta+460))^(1/(k-1))
vc=vd/va*vb
rv=vd/vb
rv2=vc/vb
rv3=va/vb
imep= W*J/(144*(vd-vb))/5.77 
//5.77 is conversion factor
//results
printf("cycle expansion ratio = %.1f ",rv)
printf("\n isothermal expansion ratio = %.1f",rv2)
printf("\n isentropic expansion ratio = %.1f",rv3)
printf("\n imep = %.1f lbf/in^2",imep)
