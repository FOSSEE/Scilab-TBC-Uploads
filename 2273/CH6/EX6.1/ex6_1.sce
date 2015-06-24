//Determine auxiliary constants
clear;
clc;

//soltion
//FUNCTIONS
function [z]=rxr(A,B)//Function for the multiplication of rectangular
    z(1)=A(1)*B(1)
    z(2)=A(2)+B(2)
    endfunction

function [a]=r2p(z)//Function for rectangular to polar
    a=z(1)*complex(cosd(z(2)),sind(z(2)))
endfunction

function [v]=p2r(q)//Function for polar to rectangular
    v(1)=abs(q)
    v(2)=atand(imag(q)/real(q))
endfunction

//given
r=0.25;//ohm
x=0.48;//ohm
g=4*10^-9;//mho
b=2.53*10^-6;//mho
f=50;//frequency
l=1000;
z=complex(r,x);
y=complex(g,b);
Z_=z*1000;
Y_=y*1000;
Z=p2r(Z_);
Y=p2r(Y_);
YZ=rxr(Z,Y);
Y2Z2=rxr(YZ,YZ);
[Y3Z3]=rxr(Y2Z2,YZ);
A_=1+(r2p(YZ))/2+(r2p(Y2Z2))/24+(r2p(Y3Z3))/720;
A=p2r(A_);
printf("A = D = %.4f∠%.2f°\n",A(1),A(2));
P_=(1+(r2p(YZ))/6+(r2p(Y2Z2))/120+(r2p(Y3Z3))/5040);
P=p2r(P_);
B=rxr(Z,P);
printf("B= %.2f∠%.2f° ohm\n",B(1),B(2));
C=rxr(Y,P);
printf("C= %.2f*10^-3 ∠%.2f° siemens\n",C(1)*1000,C(2));
