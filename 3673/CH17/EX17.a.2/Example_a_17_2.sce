//Example_a_17_2 page no:864
clc;
fc=1.5*10^3;
k=500;
fa=1600;
m=sqrt(1-(fc/fa)^2);
L=k/(%pi*fc);
C=1/(%pi*k*fc);
//calculating T-section elements
L_t=m*L/2;
L_t=L_t*1000;
C_t=m*C;
C_t=C_t*10^6;
L1_t=(1-m^2)*L/(4*m);//the inductance value is wrong in text book, correct calculation is done here
L1_t=L1_t*1000;
//calculating pi-section elements
C_pi=m*C/2;
C_pi=C_pi*10^6;
L_pi=m*L;
L_pi=L_pi*1000;
C1_pi=(1-m^2)*C/(4*m);
C1_pi=C1_pi*10^6;
disp("the elements of T-section are");
disp(L_t,"the inductance is (in mH)");
disp(L1_t,"the inductance connected in serial with capacitor is (in mH)");
disp(C_t,"the capacitance is (in microFarad)");
disp("the elements of pi-section are");
disp(C_pi,"the capacitance is (in microFarad)");
disp(C1_pi,"the capacitance connected in parallel with inductor is (in microFarad)");
disp(L_pi,"the inductance is (in mH)");
//the inductance value is wrong in text book, correct calculation is done here
