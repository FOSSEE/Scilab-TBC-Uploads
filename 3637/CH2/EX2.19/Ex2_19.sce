//problem 19 pagenumber 2.101
//given
freq1=15.9e3;//hz
a=1.5;format(3);
//determine rf1 r1
c=0.001e-6;//farad
R1=1/(2*3.14*freq1*c);
Rf1=(a-1)*(1/(2*3.14*freq1*c));
disp('R1 = '+string(R1/10^3)+' Kohm');
disp('Rf1 = '+string(Rf1/10^3)+' Kohm');

