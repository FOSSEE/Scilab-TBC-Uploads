//Example 17_5 page no:838
clc;
k=500;
f1=1000;
f2=10000;
L1=k/(%pi*(f2-f1));
C1=(f2-f1)/(4*%pi*k*f1*f2);
L2=C1*k^2;
C2=L1/k^2;
//calculating the T-section filter
L11=16.68/2;//inductance of T-section filter is calculated wrongly in text book
L11=L11;//converting to milliHenry
disp("the value of T-section element is");
disp(L11,"the inductance is (in mH)");
C11=2*C1;
C11=C11*10^6;//converting to microFarad
disp(C11,"the capacitance is (in microFarad)");
C2=0.0707;
L2=3.57;
disp(C2,"the shunt element capacitance is (in microFarad)");
disp(L2,"the shunt element inductance is (in mH)");
//calculating the pi-section filter
C1=0.143;
L1=16.68;
C2=0.0707/2;
L2=2*0.0358;
disp("the value of pi seciton element is");
disp(L11*2,"the inductance is (in mH)");
disp(C11/2,"the capacitance is (in microFarad)");
disp(C2,"the capacitance is(in microFarad)");
disp(L2,"the inductance is (in mH)");
//inductance of T-section filter is calculated wrongly in text book
