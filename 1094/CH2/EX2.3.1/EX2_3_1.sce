//Exa:2.3.1
clc;
clear;
close;
V_AB=100*sqrt(3) //phase voltage of AB(in volts)
V_AN=100*(cosd(-30)+%i*sind(-30)) //line voltage of A(in volts)
V_BC=100*sqrt(3)*(cosd(-120)+%i*sind(-120)) //phase voltage of BC(in volts)
V_CN=100*(cosd(90)+%i*sind(90)) //line voltage of C(in volts)
Z_ph=10+%i*10 //impedence per phase(in ohms)
I_A=V_AN/Z_ph
I_C=V_CN/Z_ph
W_A=V_AB*abs(I_A)*cosd(atand(imag(I_A)/real(I_A)))
disp(W_A,'W_A(in W)=')
W_C=abs(V_BC)*abs(I_C)*cosd((atand(imag(I_C)/real(I_C)))-atand(imag(V_BC)/real(V_BC)))
disp(W_C,'W_B(in W)=')
P=W_A+W_C
disp(P,'total power(in W)=')