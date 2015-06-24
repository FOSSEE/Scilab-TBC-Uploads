//Example 3_5
clc;
clear;close;

//Given data: 
V=200;//V
R=10;//in ohm
L=20;//mH
C=100;//pF
f=50;//Hz

//Solution :
Z1=R+%i*(2*%pi*f*L*10^-3-1/(2*%pi*f*C*10^-6));//ohm
Z3=R+%i*(3*2*%pi*f*L*10^-3-1/(3*2*%pi*f*C*10^-6));//ohm
Z5=R+%i*(5*2*%pi*f*L*10^-3-1/(5*2*%pi*f*C*10^-6));//ohm
Z7=R+%i*(7*2*%pi*f*L*10^-3-1/(7*2*%pi*f*C*10^-6));//ohm
Z9=R+%i*(9*2*%pi*f*L*10^-3-1/(9*2*%pi*f*C*10^-6));//ohm
I=4*V/%pi/abs(Z1);//A
Irms=I/sqrt(2);//A
disp(Irms,"RMS load current(A)");
Ip=sqrt((4*V/%pi/abs(Z1))^2+(4*V/3/%pi/abs(Z3))^2+(4*V/5/%pi/abs(Z5))^2+(4*V/7/%pi/abs(Z7))^2+(4*V/9/%pi/abs(Z9))^2);//A
disp(Ip,"Peak value of load current(A)");
Ih=sqrt(Ip^2-I^2)/sqrt(2);//A
disp(Ih,"RMS harmonic current(A)");
hd=sqrt(Ip^2-I^2)/I;//harmonic distortion
disp(hd*100,"Harmonic distortion(%)");
Irms_load=Ip/sqrt(2);//A
Pout=Irms_load^2*R;//W
disp(Pout,"Total output power(W)");
Pout_com=Irms^2*R;//W(fundamental component)
disp(Pout_com,"Fundamental component of power(W)");
Iavg_in=Pout/V;//A
disp(Iavg_in,"Average input current(A)");
Ip_thy=Ip;//A
disp(Ip_thy,"Peak thyristor current(A)");
