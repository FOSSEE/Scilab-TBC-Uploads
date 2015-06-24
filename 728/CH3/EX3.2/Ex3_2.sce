//Caption:Calculate the charcteristic impedance, attenuation constant, phase constant of transmission line Calculate power delivered to load , if line length=500 km.
//Exa:3.2
clc;
clear;
close;
e=2.718;
//Given:
R=8;//in ohm/kilometer
L=2*10^-3;//in henry/kilometer
C=0.002*10^-6;//in farad/kilometer
G=0.07*10^-6;//second/kilometer
f=2000;//in hertz
//Since [w=2*(pi)*f] & [Zch={(R+jwL)/(G+jwC)}^0.5]
w=2*%pi*f;//in radians
Z_ch={(R+%i*w*L)/(G+%i*w*C)}^0.5;//computing characteristic impedance
disp(Z_ch,"Characteristic impedance (in ohms) =");
y={(R+%i*w*L)*(G+%i*w*C)}^0.5;
a=real(y);//atteneuation constant
b=imag(y);//phase constant
disp(a,"Atteneuation constant (in NP/km) =");
disp(b,"Phase constant (in radian/km) =");
V_in=2;//in volts
l=500;//in kilometers
Z_in=Z_ch;//Since line terminated at its char. imped. so, Z_in=Z_ch=Z(load)
I_s=V_in/Z_in;
Imag=[[{{real(I_s)}^2}+{{imag(I_s)}^2}]^0.5]*10^3;//in milliampere
Iang=atan(imag(I_s)/real(I_s))*(180/%pi);//in degrees
I=Imag*e^-1.99;//I=Is*e^-yl
//P(power delivered)=I*I*REAL(Z_ch)
P=I*I*real(Z_ch);
disp(P,"Power delivered to load (in microwatt =)");