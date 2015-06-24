//Page Number: 559
//Example 10.8
clc;
//Given
cl=3D+8; //m/s
f=5D+9; //Hz
Er=9;
C=-10; //db
Z0=50; //ohm
//Length
L=(cl/f)/(4*sqrt(Er));
disp('cm',L*100,'Length:');

//Coupling coefficient
C0=10^(C/20);
disp(C0,'Coupling coefficient:');

//Even and odd mode impedance
Z0e=(Z0*sqrt(1+C0))/sqrt(1-C0);
disp('ohm',Z0e,'Even mode impedance:');


Z0o=(Z0*sqrt(1-C0))/sqrt(1+C0);
disp('ohm',Z0o,'Odd mode impedance:');



