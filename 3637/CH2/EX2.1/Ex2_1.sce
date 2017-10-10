//problem 1 pagenumber 2.86
//given
rf=10*10^3;//ohm
//vo=0.1v1+v2+10v3;                         1
//determine r1,r1,r3
r1=rf/0.1;//from 1
r2=rf/1;//from 1
r3=rf/10;//from 1
format(6);
disp('R1 = '+string(r1/10^3)+' Kohm');
disp('R2 = '+string(r2/10^3)+' Kohm');
disp('R3 = '+string(r3/10^3)+' Kohm');
disp('Rf = '+string(rf/10^3)+' Kohm');


