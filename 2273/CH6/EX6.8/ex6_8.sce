//find sending end reactive and active power
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
//given
Sr=7.5*10^6;//VA
Vrl=32*1000;//V
pf=0.85//power factir
Vr=[Vrl/sqrt(3) 0];
Ir=[Sr/(sqrt(3)*Vrl) -acosd(pf)];
A=[1 0];
B=[11.18 63.43];
D=A;
C_=r2p(rxr(A,D))-1;
C=[abs(C_) 0]
AV=r2p(rxr(A,Vr));
BI=r2p(rxr(B,Ir));
Vs=AV+BI;
theta1=atand((imag(Vs)/real(Vs)));
printf("Sending end voltage= %.f∠%.1f°V\n",abs(Vs),theta1);
Y1=rxr(C,Vr);
Y2=rxr(D,Ir);
CV=r2p(Y1);
DI=r2p(Y2);
Is=CV+DI;
theta2=atand(imag(Is)/real(Is));
printf("Sending end current= %.2f∠%.1f° A\n",abs(Is),theta2);
phis=theta1-theta2;
Pa=3*abs(Vs)*abs(Is)*cosd(phis);//Active power
printf("Sending end power=%.2f MW\n",Pa/10^6);
Pr=3*abs(Vs)*abs(Is)*sind(phis);//Reactive power
printf("Reactive power= %.1f MVAR",Pr/10^6)
