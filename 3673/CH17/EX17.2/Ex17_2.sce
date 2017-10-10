//Example 17_2 page no:826
clc;
//given
Rl=600;
k=600;
fc=1000;
//calculating the impedence and capacitance
L=k/(4*%pi*fc);
L=L*1000;//converting to milli henry
C=1/(4*%pi*fc*k);
C=C*10^6;//converting to micro farad
disp(L,"the inductance required for high pass filter is (in mH)");
disp(C,"the capacitance required for high pass filter is (in microFarad)");
