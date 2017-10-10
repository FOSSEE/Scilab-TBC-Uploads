//problem 14 pagenumber 2.97
//given
format(6);
fc=3e3;//hz
q=30;//quality factor
af=20;//forward gain
c=0.1e-6;//farad
//determine r1 r2 r3
r1=q/(2*3.14*fc*c*af);
r2=q/(2*3.14*fc*c*(2*q*q-af));
r3=q/(3.14*fc*c);format(4);
disp( 'R1 = '+string(r1)+' ohm');format(3);
disp( 'R2 = '+string(r2)+' ohm');
disp( 'R3 = '+string(r3/10^3)+' ohm');

