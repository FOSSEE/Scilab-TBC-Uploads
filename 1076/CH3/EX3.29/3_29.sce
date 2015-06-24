clear;
clc;

A=complex(.93*cosd(3), .93*sind(3));
B=complex(150*cosd(70), 150*sind(70));
D=A;

C=((A*D)-1)/B

Z=complex(100*cosd(70), 100*sind(70));
Y=complex(.00025*cosd(-75), .00025*sind(-75));

m1=[A B; C D]
m2=[1 0 ; Y 1 ]
m3=[1 Z ; 0 1 ]

A0=m1*m2*m3;
A1=A0(1,1)
B1=A0(1,2)
C1=A0(2,1)
D1=A0(2,2)

mprintf("\nA0= %s", string(round(abs(A1)*1000)/1000) +'/_'+ string(round(atand(imag(A1)/real(A1))*10)/10) )
mprintf("\nB0= %s", string(round(abs(B1)*1000)/1000) +'/_'+ string(round(atand(imag(B1)/real(B1))*100)/100) )
mprintf("\nC0= %s", string(round(abs(C1)*100000)/100000) +'/_'+ string(round(atand(imag(C1)/real(C1))*1)/1 ) )
mprintf("\nD0= %s", string(round(abs(D1)*1000)/1000) +'/_'+ string(round(atand(imag(D1)/real(D1))*10)/10) )
