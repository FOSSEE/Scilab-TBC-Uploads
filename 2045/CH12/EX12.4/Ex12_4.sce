//pagenumber 554 example 4
clear
slope1=3*10^3;
egs=10;//volt
d=0.012;//watts
ig=sqrt(d/slope1);
vg=slope1*ig;
r=(egs-vg)/ig;

disp("source resistance   =   "+string((r))+"ohm");//it is not given in the book

