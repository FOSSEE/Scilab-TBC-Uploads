//pagenumber 305 example 27
clear
ic=0.5*10^-3;//ampere
rb=100*10^3;//ohm
v1=0.026;//volt
r1=50;//ohm
colres=1*10^3;//ohm
g=ic/v1;
volgai=g*colres;
disp("output resistance   =   "+string((colres))+"ohm");
disp("input resistance very low");//not given in the book
disp("voltage gain   =   "+string((volgai)));



