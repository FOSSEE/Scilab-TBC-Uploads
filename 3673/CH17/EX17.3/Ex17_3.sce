//Example 17_3 page no:831
clc;
//given
k=400;
fc=1000;
fx=1100;
//calculating m,L,C
m=sqrt(1-(fc/fx)^2)
L=k/(%pi*fc);
C=1/(%pi*k*fc);
//calculating T-section elements are
L1=m*L/2;
L1=L1*1000;//converting to milliHenry
C1=m*C;
C1=C1*10^6;//converting to microFarad
L2=(1-(m^2))*L/(4*m);
L2=L2*1000;//converting to milliHenry
disp("the values of T-section elements are");
disp(L1,"the inductance between which capacitance is connected is (in mH)");
disp(C1,"the capacitance connected between inductor is (in microFarad)");
disp(L2,"the inductance connected in series with capacitance is (in mH)");
//calculating the pi section elements are
C1=m*C/2;
C1=C1*10^6;//converting to microFarad
C2=(1-m^2)*C/(4*m);
C2=C2*10^6;//converting to microFarad
L1=m*L;
L1=L1*1000;//converting to milliHenry
disp("the values of pi section elements are");
disp(C1,"the capacitance connected in parallel is (in microFarad)");
disp(C2,"the capacitance connected in parallel to inductor is (in microFarad)");
disp(L1,"the inductor connected in parallel to capacitance is (in mH)");
