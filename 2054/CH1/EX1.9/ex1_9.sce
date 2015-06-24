//Exa:1.9
clc;
clear;
close;
V=200;//in volts
I_1=20//in amperes
R_a=0.5;//in ohms
E_b1=V-I_1*R_a;//in volts
N1=700;//in rpm
I_2=sqrt(1.44)*I_1;//in amperes
E_b2=V-I_2*R_a;//in volts
N2=N1*(E_b2/E_b1)*(I_1/I_2);
disp(int(N2),'(a) Speed (in rpm)=');
I_3=10;//in amperes
E_b3=V-I_3*R_a;//in volts
N3=N1*(E_b3/E_b1)*(I_1/I_3);
disp(ceil(N3),'(b) Speed (in rpm)=');