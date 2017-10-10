//Example 17_1 page no:823
clc;
//given
k=500;//load resistance in ohm
fc=2000;//frequency in Hz
L=k/(%pi*fc);
L=L*1000;//converting to milli Henry
C=1/(%pi*fc*k);
C=C*10^6;//converting to micro farad
disp(L,"the inductance for low pass filter is (in mH)");
disp(C,"the capacitance for low pass filter is (in microFarad)");
