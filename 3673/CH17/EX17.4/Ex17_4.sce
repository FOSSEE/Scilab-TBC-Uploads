//Example 17_4 page no:834
clc;
//given
k=500;
fc=10000;
m=0.4;
//Calculating the impedence and capacitance
L=k/(4*%pi*fc);
C=1/(4*%pi*fc*k);
//calculating T-section elements
C1=2*C/m;
L1=L/m;
C2=(4*m)*C/(1-m^2);
C1=C1*10^6;//converting to microFarad
L1=L1*1000;//converting to milliHenry
C2=C2*10^6;//converting to microFarad
disp("the T-section elements are");
disp(C1,"the capacitance between which inductance is connected is (in microFarad)");
disp(L1,"the inducatance connected in parallel is (in mH)");
disp(C2,"the capacitance connected in series is (in microFarad)");
//calculating the pi-section elements
L1=2*L/m;
L2=(4*m)*L/(1-m^2);
C1=C/m;
C1=C1*10^6;//converting to microFarad
L1=L1*1000;//converting to milliHenry
L2=L2*1000;//converting to milliHenry
disp("the value of pi section elements are");
disp(C1,"the capacitance connected in parallel to inductor is(in microFarad)");
disp(L1,"the inductance connected parallel to each other is (in mH)");
disp(L2,"the inductance connected parallel to capacitor is(in mH)");
