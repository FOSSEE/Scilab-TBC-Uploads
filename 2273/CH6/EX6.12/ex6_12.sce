//Find sending end voltage and current and power factor
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
P=40*10^6;//MVA
Vrl=220*1000;//V
Vr=[Vrl/sqrt(3) 0];
Ir=[0 0];
z=complex(0.105,0.3768)*500;
Z=[floor(abs(z)*1000)/1000 atand(imag(z)/real(z))];
y=complex(0,2.882*10^-6)*500;
Y=[abs(y) 90];
YZ=rxr(Z,Y);
Y2Z2=rxr(YZ,YZ);
A_=1+(r2p(YZ))/2+(r2p(Y2Z2))/24;
A=p2r(A_);
P_=(1+(r2p(YZ))/6+(r2p(Y2Z2))/120);
P=p2r(P_);
C=rxr(Y,P);
D=A;
AV=rxr(A,Vr);
Vs=AV;
Vsl=sqrt(3)*Vs(1)/1000;
printf("Sending end voltage= %.3f kV\n",Vsl);//IN BOOK DUE TO PRINTING MISTAKE IT IS 119.51 kV
Is=rxr(C,Vr);
printf("Sending end line current= %.1f A\n",Is(1));//IN BOOK IT IS 171.4 A DUE TO ROUND OFF
Spf=cosd(Vs(2)-Is(2));
printf("Sending end power factor= %.4f leading",Spf);
