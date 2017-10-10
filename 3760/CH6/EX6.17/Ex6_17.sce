clc;
//r2/x2=a
a=.5;
Test=25;

//for part a
disp('For part a ');
//b=3(V1)2/r2Ws
//As per given conditions 
b=Test*5;
//When rotor resistace is doubled
Test1=b*(1/4);
mprintf('The starting torque is %f Nm\n',Test1);
//for part b
disp('For part b');
//resisance is half
Test2=b*(2/17);


mprintf('The starting torque is %f Nm',Test2);
