       //EXAMPLE 2-27  PG NO 74
F=50
V=230;           //voltage
R=20;            //resisance
I=V/R;           //current
P=V*I;           //power
Im=I*1.414;         //Maximum current
W=2*%pi*F;
disp(' current  is    = '+string(I)+' A');
disp(' POWER  is    = '+string(P)+' W');
disp(' MAXIMUM CURENT is    = '+string(Im)+' A');
disp(' W  is    = '+string(W)+' ');

