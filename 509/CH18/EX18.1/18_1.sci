// Chapter 18 Example 1//
clc
clear
//line to ground capacitance= c,supply frequency=f//
//inductance of the coil =l//
f=50;
c=0.2*10^-6;
l=1/(3*(2*%pi*f)^2*c);
printf("\n Inductance of the coil %.2f H\n",l);
//kVA rating of the coil = kVA,operating voltage =v//
v=132; // in kV//
vph=v*10^3/sqrt(3);
kVA=vph^2/(2*%pi*f*l);
printf("\n kVA rating is given by %.f kVA\n",kVA/10^3);// to get ans in kVA divide by 10^3//
