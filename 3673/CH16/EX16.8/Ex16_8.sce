//Example 16_8 page no:759
clc;
//given
Y11=1/2;
Y21=-1/4;
Y22=5/8;
Y12=-1/4;
//if two identical sections of the network is connected in parallel then Y parameters are calculated as
Y11=2*Y11;
Y21=2*Y21;
Y22=2*Y22;
Y12=2*Y12;
disp(Y11,"the parameter Y11 is(in mho)");
disp(Y21,"the parameter Y21 is(in mho)");
disp(Y12,"the parameter Y12 is(in mho)");
disp(Y22,"the parameter Y22 is(in mho)");
