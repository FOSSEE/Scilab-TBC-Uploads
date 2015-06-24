// Chapter 6_The pn junction
//Caption_Space charge width
//Ex_2//page 224
T=300
Na=10^16     //acceptor ion concentration
Nd=10^15     //donor ion concentration
eps=11.7*8.85*(10^-14)
e=1.6*(10^-19)
Vbi=0.635     //built in potential barrier
W=(2*eps*Vbi/e*(Na+Nd)/(Na*Nd))^0.5
Emax=-e*Nd*W/eps
printf('The space charge width is %f cm and the electric field is %f V/cm',W,Emax)