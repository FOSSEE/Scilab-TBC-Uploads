// Chapter 13 Example 22//
clc
clear
// air density factor=d0 ,barometric pressure=b,temperature=t,rating of transmission line=vcc//
vcc=220; // in kV//
b=73;// in cm of Hg//
t=20;// in celsius//
d0=3.92*b/(273+t);
printf("\n Air density factor = %.4f \n",d0);
// phase to neutral critical disruptive voltage=vc,distance between conductors=d//
// surface irregularity factor=m ,diameter of conductor=d1//
d=400;// in cms//
m=0.96;
d1=2;// in cms//
r=d1/2;
go=21.1;
vc=r*go*m*d0*log(d/r);
printf("\n Phase-to-neutral critical disruptive voltage = %.2f kV\n",vc);
vp=vcc/sqrt(3);
printf("\n Line to line critical disruptive voltage = %.2f kV\n",vp);
// Since vp > vc cornoa will be present, corona loss is given by//
f=50;// in Hz//
pc=241*(10^-5)*((f+25)/d0)*sqrt(r/d)*(vp-vc)^2;
printf("\n Corona loss is given by %.2f kW/phase/km\n",pc);
// in rainy weather vc=0.8*vc//
pc1=241*(10^-5)*((f+25)/d0)*sqrt(r/d)*(vp-0.8*vc)^2;
printf("\n Corona loss for rainy weather is given by %.2f kW/phase/km\n",pc1);


