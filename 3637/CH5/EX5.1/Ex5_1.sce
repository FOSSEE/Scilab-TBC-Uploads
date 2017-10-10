//problem 1 pagenumber 5.95
//given
clear
w=8e-3;//second
c1=0.1e-6;//farad
//determine r1
r1=w/(1.11*c1);format(3);
disp('R1 = '+string(r1/10^3)+' Kohm');format(6);
disp('C1 = '+string(c1*1e6)+' μfarad');


