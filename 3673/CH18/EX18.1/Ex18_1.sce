//Example 18_1 page no:889
clc;
//calculating for first foster network
s=0;
P0=5*(s^2+4)*(s^2+25)/(s^2+16);
s=-%i*4;
P2=5*(s^2+4)*(s^2+25)/(s*(s-(%i*4)));
H=5;
Wn=8;
C0=1/P0;
Lx=H;
C2=1/(2*P2);
L2=2*P2/Wn^2*4;
disp("here the results are displayed in decimal values");
disp("the elements of first foster network is");
disp(C0,"the capacitance C0 is (in Farad)");
disp(Lx,"the inductance Linfinity is (in H)");
disp(C2,"the capacitance C2 is (in Farad)");
disp(L2,"the inductance L2 is(in H)");
//calculating for second foster network
s=-%i*2;
P1=1*(s*(s^2+16))/(5*(s+(-%i*2))*(s^2+25));
s=-%i*2;
P2=1*(s*(s^2+16))/(5*(s+(-%i*2))*(s^2+25));
L1=1/(2*P1);
C1=(2*P1)/4;
L2=(1/(1.5*P2));
C2=2*3/(70*25);
disp("the elements of second foster network is");
disp(C1,"the capacitance C1 is (in Farad)");
disp(L1,"the inductance L1 is (in H)");
disp(C2,"the capacitance C2 is (in Farad)");
disp(L2,"the inductance L2 is(in H)");
