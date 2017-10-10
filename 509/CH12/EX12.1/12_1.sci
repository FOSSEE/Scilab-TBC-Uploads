// Chapter 12 Example 1//
clc
clear
// span length=l,ultimate strength=s,safety factor=sf//
l=160;// in m//
s=8000;// in N//
sf=4;
// working stress=t//
t=s/sf;
printf("\n Working Stress T = %.2f N\n",t);
//sag of line=d,weight of conductor=w//
w=4;// in N/m //
d=w*l^2/(8*t);
printf("\n Sag of the line = %.2f m\n",d);
// length of conductor in spans=L//
L=l+((w^2*l^3)/(24*t^2));
printf("\n Length of the conductor in spans = %.2f m\n",L);