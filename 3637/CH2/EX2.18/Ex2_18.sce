//problem 18 pagenumber 2.101
//given
format(6);
freq1=100;//hz
c=0.1e-6;//farad
//determine r1 r2
r2=29;//ohm assuming
r1=(0.065/(freq1*c)*10)*r2;
disp('R1 = '+string(r1/10^3)+' Kohm');
disp('R2 = '+string(r2)+' ohm');

