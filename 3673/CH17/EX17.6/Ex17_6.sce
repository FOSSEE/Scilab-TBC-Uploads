//Example 17_6 page no:842
clc;
f1=2000;
f2=6000;
k=600;
L1=k*(f2-f1)/(%pi*(f2*f1));
C1=1/(4*%pi*k*(f2-f1));
L2=1/(4*%pi*k*(f2-f1));
C2=1*(f2-f1)/(k*%pi*(f1*f2));
//calculating T-section filter
L11=L1/2;
C11=2*C1;
L2=12;
C2=0.176;
L11=L11*1000;//converting to milliHenry
C11=C11*10^6;//converting to microFarad
disp("the T-section filter elements are");
disp(L11,"the inductace is (in mH)");
disp(C11,"the capacitance is (in microFarad)");
disp(L2,"the inductane is (in mH)");
disp(C2,"the capacitance is (in microFarad)");
//calculating the pi-section filter
L1=63;
C1=0.033;
L2=2*L2;
C2=C2/2;
disp("the pi section filter elements are");
disp(L1,"the inductace is (in mH)");
disp(C1,"the capacitance is (in microFarad)");
disp(L2,"the inductane is (in mH)");
disp(C2,"the capacitance is (in microFarad)");
