//to calculate the maximum electric stress on the insulation

//clc();
v=6.5;..//working voltage in volts
d=10;..//diameter of conductor in mm
t=7.5;..//thickness of insulation in mm
r=d/2;..//radius of conductor in mm
R=(r+t);
a=R/r;
b=log([a]);

gmax=v/(r*b);
printf("\n the maximum electric stress on the insulation is:  %.2f kV/mm\n",gmax);
