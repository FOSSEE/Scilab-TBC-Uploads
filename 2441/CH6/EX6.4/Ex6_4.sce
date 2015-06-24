//exa 6.4
clc;clear;close;
format('v',6);
l=350;//km(length of line)
Z=180*expm(%i*75*%pi/180);//ohm/phase(Total)
Y=1*10^-3*expm(%i*90*%pi/180);//Siemens/phase(Total)
z=Z/l;//ohm/km
y=Y/l;//Siemens/km
re=l*sqrt(z*y);//
Zc=sqrt(z/y);//ohm
disp("For Uncompensated Line, Constants are :");
B=Z;//ohm//B Parameter
A=1+Z*Y/2;//unitless//A Parameter
D=A;//unitless//D Parameter
C=Y*(1+Z*Y/4);//S//C Parameter
A_mag=abs(A);
A_angle=atand(imag(A)/real(A));//degree
B_mag=abs(B);
B_angle=atand(imag(B)/real(B));//degree
C_mag=abs(C);
C_angle=atand(imag(C)/real(C))+180;//degree
D_mag=abs(D);
D_angle=atand(imag(D)/real(D));//degree
disp(B_angle,B_mag,"Magnitude and Angle(degree) of B(ohm) is ");
disp(A_angle,A_mag,"Magnitude and Angle(degree) of A is ");
disp(D_angle,D_mag,"Magnitude and Angle(degree) of D is ");
format('v',9);
disp(C_mag,"Magnitude of C(S) is ");
format('v',6);
disp(C_angle,"Angle(degree) of C is ");
disp("For Compensated Line, Constants are :");
B=Z-0.6*%i*406;//ohm//B Parameter
A=1+conj(B)*Y/2;//unitless//A Parameter
D=A;//unitless//D Parameter
C=Y*(1+Z*Y/4);//S//C Parameter
A_mag=abs(A);
A_angle=atand(imag(A)/real(A));//degree
B_mag=abs(B);
B_angle=-atand(imag(B)/real(B));//degree
C_mag=abs(C);
C_angle=atand(imag(C)/real(C))+180;//degree
D_mag=abs(D);
D_angle=atand(imag(D)/real(D));//degree
disp(B_angle,B_mag,"Magnitude and Angle(degree) of B(ohm) is ");
disp(A_angle,A_mag,"Magnitude and Angle(degree) of A is ");
disp(D_angle,D_mag,"Magnitude and Angle(degree) of D is ");
format('v',9);
disp(C_mag,"Magnitude of C(S) is ");
format('v',6);
disp(C_angle,"Angle(degree) of C is ");
