//Exa 5.22
clc;
clear;
close;
//Given data :
f=50;//Hz
L=300;//km
r=0.15;//ohm/km
x=0.5;//ohm/km
y=3*10^-6;//mho/km
VRL=220*10^3;//Volt
VR=VRL/sqrt(3);//Volt
P=200*10^6;//W
pf=0.85;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
R=r*L;//ohm
X=x*L;//ohm
Y=y*L;//mho
Z=R+%i*X;//ohm
//part (i)
A=1+1/2*%i*Y*Z;//parameter of 3-phase line
D=A;//parameter of 3-phase line
B=Z;//parameter of 3-phase line
C=%i*Y*(1+1/4*%i*Y*Z);//parameter of 3-phase line
disp("Parameter A, magnitude is "+string(abs(A))+" and angle in degree is "+string(atand(imag(A),real(A))));
disp("Parameter B, magnitude is "+string(abs(B))+" and angle in degree is "+string(atand(imag(B),real(B))));
disp("Parameter C, magnitude is "+string(abs(C))+" and angle in degree is "+string(atand(imag(C),real(C))));
disp("Parameter D, magnitude is "+string(abs(D))+" and angle in degree is "+string(atand(imag(D),real(D))));
//part (ii)
IR=poly(0,'IR');
p=0.024525*IR^2+11.427*IR-2102;//from VS=A*VR+B*IR;//Volt
IR=roots(p);
IR=IR(2);//taking +ve value
P=sqrt(3)*VRL*IR*10^-6;//MW
disp(P,"Power received in MW : ");
///part (iii)
P=200*10^6;//W
IR=P/sqrt(3)/VRL/pf;//A
fi=acosd(pf);//degree
IR=IR*expm(%i*-fi*%pi/180);
VS=A*VR+B*IR;//Volt
VSL=sqrt(3)*abs(VS);//Volt
disp(VSL/1000,"Sending end Line voltage(kV) : ");
