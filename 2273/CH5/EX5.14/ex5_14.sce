//Determine ABCD constant and sending end power factor
clear;
clc;
//soltion
//FUNCTIONS
function [z]=rxr(A,B)//Function for the multiplication in rectangular form
    z(1)=A(1)*B(1)
    z(2)=A(2)+B(2)
    endfunction

function [z]=rdr(A,B)//Function for the division in rectangular form
    z(1)=A(1)/B(1)
    z(2)=A(2)-B(2)
    endfunction

function [a]=r2p(z)//Function for rectangular to polar
    a=z(1)*complex(cosd(z(2)),sind(z(2)))
endfunction

//given
P=100*10^6;//watts
Vrl=132*1000;//V
pf=0.8//power factir
Vr=[Vrl/sqrt(3) 0];
Ir=[P/(sqrt(3)*Vrl*pf) -acosd(pf)];
A=[0.98 1];
B=[100 75];
C=[0.0005 90];
D=A;
AB=rxr(A,B);
Ap=rdr(AB,B);
printf("A(in parallel)= D = %.2f∠%d°\n",Ap(1),Ap(2));
BB=rxr(B,B);
Bp_=rdr(BB,B);
Bp=[Bp_(1)/2 Bp_(2)];//Bp is a half vector of the Bp_
printf("B(in parallel)= %d∠%d° ohm\n",Bp(1),Bp(2));
printf("Here A1=A2 & D1=D2 therefore \n");
Cp=[C(1)*2 C(2)];
printf("C(in parallel)= %.3f∠%d° siemens\n",Cp(1),Cp(2));
Z1=rxr(Ap,Vr);
Z2=rxr(Bp,Ir);
AV=r2p(Z1);
BI=r2p(Z2);
Vs=AV+BI;
theta1=atand((imag(Vs)/real(Vs)));
Y1=rxr(Cp,Vr);
Y2=rxr(Ap,Ir); //D = A
CV=r2p(Y1);
DI=r2p(Y2);
Is=CV+DI;
theta2=atand(imag(Is)/real(Is));
phis=theta1-theta2;
Spf=cosd(phis);//Sending end power factor
printf("Sending end power factor= %.3f(lagging)",Spf);
