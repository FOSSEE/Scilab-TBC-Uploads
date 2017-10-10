//Example_a_17_6 page no:867
clc;
fc=6000;
k=500;
fa=1.75*fc;
L=k/(%pi*fc);
C=1/(%pi*k*fc);
m=sqrt(1-(fc/fa)^2);
L_t=m*L/2;//inductance value varie slightly with text book, hence values are rounded off in text book
C_t=m*C;
L1_t=(1-m^2)*L/(4*m);
disp("the elements of m-derived LPF(T-Section) are");
disp(L_t*1000,"the inductance is (in mH)");
disp(C_t*10^6,"the capacitance is (in microFarad)");
disp(L1_t*1000,"the inductance connected in series with capacitance is (in mH)");
//inductance value varie slightly with text book, hence values are rounded off in text book
