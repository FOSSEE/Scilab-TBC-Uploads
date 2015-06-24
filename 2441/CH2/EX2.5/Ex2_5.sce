//exa 2.5
clc;clear;close;
format('v',8);
I1=0.8;//p.u.
I2=1;//p.u.
Za=0.04+%i*0.12;//p.u.
Zb=0.03+%i*0.1;//p.u.
Zc=0.03+%i*0.12;//p.u.
V=1;//p.u.
//Solution : 
V1=V+(I1+I2)*Za+I1*(Zb);//p.u.
V2=V+(I1+I2)*Za+I2*(Zc);//p.u.
P1=real(I1*V1);//p.u.
P2=real(I2*V2);//p.u.
fi1=atan(imag(V1),real(V1));
fi2=atan(imag(V2),real(V2));
disp("Loss Coefficients are : ")
B11=[real(Za)+real(Zb)]/[abs(V1)^2*cos(fi1)^2];//p.u.
disp(B11,"B11(p.u.) : ");
B22=[real(Za)+real(Zc)]/[abs(V2)^2*cos(fi2)^2];//p.u.
disp(B22,"B22(p.u.) : ");
B12=[real(Za)]/[abs(V1)*abs(V2)*cos(fi1)*cos(fi2)];//p.u.
disp(B12,"B12(p.u.) : ");
PL=P1^2*B11+P2^2*B22+2*P1*P2*B12;//p.u.
format('v',10);
disp(PL,"Transmission Loss(p.u.) : ");
//Note : Values calculated in the book are slightly wrong because of accuracy in calculation as compared to scilab accuracy.
