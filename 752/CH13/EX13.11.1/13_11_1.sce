clc;
//page no 488
//prob no. 13.11.1
d=0.1;//length of 50ohm short-circuited line
Z0=50;//in ohm
f=500*10^6;//freq in Hz
pi=180;
Bl=2*pi*d;
//a)Determination of equivalent inductive reactance
Z=%i*Z0*tand(Bl);
disp('ohm','i',Z,'The equivalent inductive reactance is');
//b)Determination of equivalent inductance
L_eq=Z/(2*%pi*f);
disp('nH',L_eq*10^9,'The equivalent inductance is');