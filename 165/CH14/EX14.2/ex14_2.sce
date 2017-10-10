//Example 14.2
clc;

//Given values of applied potential in V
Va=2;
Vb=1;
Vc=3;
//Given resistence values in ohm
Ra=3000;
Rb=3000;
Rc=3000;
Rf=1000;
//Output of the given summer
Vo=-Rf*(Va/Ra+Vb/Rb+Vc/Rc);
printf('\nOutput Voltage of the op-amp is %.2f ohm\n',Vo)