//Example_a_16_9 page no:787
clc;
Y11=6;
Y22=6;
Y21=4;
Y12=4;
Ys=1;
driv_pt_admt=((Y22*Ys)+(Y22*Y11)-(Y21*Y12))/(Ys+Y11);
disp(driv_pt_admt,"the driving point admittance is (in mho)");
