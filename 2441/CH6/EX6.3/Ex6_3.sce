//exa 6.3
clc;clear;close;
format('v',7);
l=350;//km(length of line)
Z=180*expm(%i*75*%pi/180);//ohm/phase(Total)
Y=1*10^-3*expm(%i*90*%pi/180);//Siemens/phase(Total)
z=Z/l;//ohm/km
y=Y/l;//Siemens/km
re=l*sqrt(z*y);//
Zc=sqrt(z/y);//ohm
disp("Part(a) A,B,C,D parameters are : ");
A=cosh(re);//unitless
D=A;//unitless
B=Zc*sinh(re);//ohm
C=sinh(re)/Zc;//unitless
A_mag=abs(A);//unitless
A_angle=atand(imag(A)/real(A));//degree
B_mag=abs(B);//ohm
B_angle=atand(imag(B)/real(B));//degree
C_mag=abs(C);//unitless
C_angle=atand(imag(C)/real(C));//degree
C_angle=C_angle+180;//degree(Converting -ve to +ve angle)
D_mag=abs(D);//unitless
D_angle=atand(imag(D)/real(D));//degree
disp(A_mag,"Magnitude of A : ");
format('v',5);
disp(A_angle,"Angle of A(degree) : ");
format('v',7);
disp(B_mag,"Magnitude of B(ohm) : ");
format('v',6);
disp(B_angle,"Angle of B(degree) : ");
format('v',8);
disp(C_mag,"Magnitude of C : ");
format('v',6);
disp(C_angle,"Angle of C(degree) : ");
format('v',7);
disp(D_mag,"Magnitude of D : ");
format('v',5);
disp(D_angle,"Angle of D(degree) : ");
//60% series compensation
B=B-%i*60/100*abs(Z)*sind(atand(imag(Z),real(Z)));//ohm(considering series compensation=60%)
//For Equivalent pi-circuit
disp("Part(b) A,B,C,D parameters of compensated line are : ");
Ydash=2/Zc*[(cosh(re)-1)/sinh(re)];//S
A=1+B*Ydash/2;//unitless
D=A;//unitless
C=2*Ydash/2+B*(Ydash/2)^2;//unitless
A_mag=abs(A);//unitless
A_angle=atand(imag(A)/real(A));//degree
B_mag=abs(B);//ohm
B_angle=atand(imag(B)/real(B));//degree
C_mag=abs(C);//unitless
C_angle=atand(imag(C)/real(C));//degree
C_angle=C_angle+180;//degree(Converting -ve to +ve angle)
D_mag=abs(D);//unitless
D_angle=atand(imag(D)/real(D));//degree
format('v',4);
disp(B_mag,"Magnitude of B(ohm) : ");
format('v',6);
disp(B_angle,"Angle of B(degree) : ");
format('v',7);
disp(A_mag,"Magnitude of A : ");
format('v',5);
disp(A_angle,"Angle of A(degree) : ");
format('v',6);
disp(C_mag,"Magnitude of C : ");
format('v',5);
disp(C_angle,"Angle of C(degree) : ");
format('v',7);
disp(D_mag,"Magnitude of D : ");
format('v',5);
disp(D_angle,"Angle of D(degree) : ");
//Answer for some parts are not accurate in the textbook.
