//Example_a_8_4 page no:327
clc;
omega=1000;
Xl=poly([25,-20.3,1],'x','c');
Xl_r=roots(Xl);
L1=Xl_r(1)/omega;
L1=L1*10^3;
disp(L1,"the value of inductance is (in mH)");
//calculating the inductance value
L2=Xl_r(2)/omega;
L2=L2*10^3;
disp("or");
disp(L2,"the value of inductance is (in mH)");
