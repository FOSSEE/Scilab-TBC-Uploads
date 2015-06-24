//find sending end voltage, regulation, recieving end rective and synchornous power
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
P=50*10^6;//VA
Vrl=110*1000;//V
pf=0.8;//power factir
Vr=[Vrl/sqrt(3) 0];
Ir=[P/(sqrt(3)*Vrl*pf) -acosd(pf)];
A=[0.96 1];
B=[100 80];
AV=r2p(rxr(A,Vr));
BI=r2p(rxr(B,Ir));
Vs=AV+BI;
theta1=atand((imag(Vs)/real(Vs)));
Vsl=sqrt(3)*abs(Vs);
printf("Sending end voltage= %.3fkV\n",Vsl/1000);
vr=(Vsl-Vrl)*100/Vrl;
printf("Voltage regulation= %.3f percent\n",vr);//IN BOOK IT IS 20.786%
clear;
Pr=70;//MW
Vsl=120;//kV
Vrl=110;//kV
A=0.96;
B=100;
bta=80;
alp=1;
b_d=acosd((70+(A/B)*Vrl^2*cosd(bta-alp))/(Vrl*Vsl/B));//beta-del
Qr=Vrl*Vsl*sind(b_d)/B-(A/B)*Vrl^2*sind(bta-alp);
printf("Recieving end reactive power= %.2f MVAR\n",Qr);
Pc=Pr*tand(acosd(0.8))-Qr;
printf("Power delivered by synchronous generator= %.3f MVAR",Pc);
