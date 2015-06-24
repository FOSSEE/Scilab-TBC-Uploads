// Chapter 6_The pn junction
//Caption_Space charge width
//Ex_3//page 227
Na=10^16   //acceptor ion concentration
T=300   //temperature in kelvin
Nd=10^15
ni=1.5*(10^10)   //intrinsic ion concentration
Vr=5    //Reverse applied voltage
Vbi=0.635
V=Vr+Vbi
W=(2*eps*V/e*(Na+Nd)/(Na*Nd))^0.5
printf('The space charge width is %f cm ',W)