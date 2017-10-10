//problem 13 pagenumber 2.97
//given
format(6);
freq1=1e3;//hz
c=0.1e-6;//farad
af=1.586;//gain
//determine rf ri r1
r1=1/(2*3.14*freq1*c);format(5);
disp('R1 = '+string(r1/10^3)+' Kohm');
disp('Ri = 10 Kohm');//assumption
ri=10e3;//ohm
rf=(af-1)*ri;format(6);
disp('Rf = '+string(rf/10^3)+' Kohm');


