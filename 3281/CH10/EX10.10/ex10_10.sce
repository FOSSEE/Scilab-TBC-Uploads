//Page Number: 560
//Example 10.10
clc;
//Given
W=6; //m
s=2.2; //m
b=4.8; //m
Er=2.2;

//Even and odd mode impedance
Z0e=((120*%pi)*(b-s))/(2*sqrt(Er)*W);
disp('ohm',Z0e,'Even mode impedance:');


Z0o=(Z0e*s)/b;
disp('ohm',Z0o,'Odd mode impedance:');

//Mid band coupling
x=(Z0e-Z0o)/(Z0e+Z0o);
C=-20*log10(x);
disp('db',C,'Mid band coupling:');

//Answer in book for C is given as 54.2 but it should be 8.60
