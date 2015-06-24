//exa 2.7
clc;clear;close;
format('v',8);
Za=0.03+%i*0.09;//p.u.
Ia=1.5-%i*0.4;//p.u.
Zb=0.10+%i*0.30;//p.u.
Ib=0.5-%i*0.2;//p.u.
Zc=0.03+%i*0.09;//p.u.
Ic=1-%i*0.1;//p.u.
Zd=0.04+%i*0.12;//p.u.
Id=1-%i*0.2;//p.u.
Ze=0.04+%i*0.12;//p.u.
Ie=1.5-%i*0.3;//p.u.
V=1;//p.u.
base=100;//MVA
//Solution
//Currents of load
IL1=0.4;//p.u.
IL2=0.6;//p.u.
//Current distribution factors :
Na1=1;Na2=0;
Nb1=0.6;Nb2=-0.4;
Nc1=0;Nc2=1;
Nd1=0.4;Nd2=0.4;
Ne1=0.6;Ne2=0.6;
//Bus Voltages
V1=V+Ia*Za;//p.u.
V2=V-Ib*Zb+Ic*Zc;//p.u.
//Phase Angles
theta1=atand(imag(Ia),real(Ia));//degree
theta2=atand(imag(Ic),real(Ic));//degree
//Power Factors : 
cos_fi1=cosd(atand(imag(V1),real(V1))-theta1);//source 1 power factor
cos_fi2=cosd(atand(imag(V2),real(V2))-theta2);//source 2 power factor
disp("Loss formula Coefficients in p.u. :")
B11=[Na1^2*real(Za)+Nb1^2*real(Zb)+Nc1^2*real(Zc)+Nd1^2*real(Zd)+Ne1^2*real(Ze)]/[abs(V1)^2*cos_fi1];//p.u.
disp(B11,"B11(p.u) : ");
format('v',7);
B22=[Na2^2*real(Za)+Nb2^2*real(Zb)+Nc2^2*real(Zc)+Nd2^2*real(Zd)+Ne2^2*real(Ze)]/[abs(V2)^2*cos_fi2];//p.u.
disp(B22,"B22(p.u) : ");
B12=[Na1*Na2*real(Za)+Nb1*Nb2*real(Zb)+Nc1*Nc2*real(Zc)+Nd1*Nd2*real(Zd)+Ne1*Ne2*real(Zc)]/[abs(V1)*abs(V2)*cos_fi1*cos_fi2*[cosd(theta1-theta2)]];//p.u.
disp(B12,"B12(p.u) : ");
//Converting p.u. to actual value
format('v',10);
disp("Loss formula Coefficients in MW^-1 :")
B11=B11/base;//MW^-1
disp(B11,"B11(MW^-1) : ");
format('v',9);
B22=B22/base;//MW^-1
disp(B22,"B22(MW^-1) : ");
B12=B12/base;//MW^-1
disp(B12,"B12(MW^-1) : ");
//Note : Values calculated in the book are slightly wrong because of accuracy in calculation as compared to scilab accuracy.
