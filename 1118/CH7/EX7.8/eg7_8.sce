clear;
//clc();
d=3;
r=0.01;
cn=2*(%pi)*8.85*10^(-12)/log([d/r])*1000000000000;
printf("\n the capacitance is:  %.2f F/km\n ",cn);

cl=0.5*cn;
printf("\n the line to line capacitance is:  %.2f*10^(-9)F/km\n ",cl);

bc=2*(%pi)*50*cn;
printf("\n the capacitance susceptance is:  %.2f*10^(-6) S/km\n ",bc/1000);
