// Chapter 13 Example 1//
clc
clear
//air density factor=d,air pressure =b,air temperature=t//
b=72;// in cm of Hg//
t=27;// in celsius//
d0=(3.92*b)/(273+t);
printf("\n Air density factor = %.4f \n",d0);
// phase to neutral critical disruptive voltage=vc,distance between conductors=d//
// surface factor=mv,surface irregularity factor=m,diameter of the conductor=d1//
d=600;// in cms//
mv=0.82;
m=0.90;
d1=2;// in cms//
go=21.1;
r=d1/2;
vc=r*go*m*d0*log(d/r);
printf("\n Phase-to-neutral critical disruptive voltage = %.2f kV\n",vc);
// this voltage is phase voltage to get line voltage multiply by square root 3//
vcl=vc*sqrt(3);
printf("\n Line to line critical disruptive voltage = %.2f kV\n",vcl);
// critical visual disruptive voltage=vv//
vv=21.1*mv*r*d0*(1+(0.3/sqrt(r*d0)))*log(d/r);
printf("\n Phase-to-neutral Critical visual disruptive voltage = %.2f kV\n",vv);
vvl=vv*sqrt(3);
printf("\n Line to line Critical visual disruptive voltage = %.2f kV\n",vvl);
