//Example 10_2 page no:442
clc;
//given
K=0.5;
L1=50*10^-3;
L2=200*10^-3;
//calculating the mutual inductance
M=K*sqrt(L1*L2);
M=M*1000;//converting to milli henry
disp(M,"the value of mutual inducatance between coil is (in mH)");
//calculating the maximum inductance when K=1
M=sqrt(L1*L2);
M=M*1000;//converting to milli henry
disp(M,"the maximum value of inducatance is (in mH)");
