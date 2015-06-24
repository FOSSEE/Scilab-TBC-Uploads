//Determine recieving end voltage and current
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
P=60*10^6;//MW
Vsl=220*1000;//V
Vs=Vsl/sqrt(3);
pf=0.8//power factir
Z=[200 80];
Y=[0.0013 90];
YZ=rxr(Z,Y);
Y2Z2=rxr(YZ,YZ);
A_=1+(r2p(YZ))/2+(r2p(Y2Z2))/24;
A=p2r(A_);
printf("A = D = %.3f∠%.3f°\n",A(1),A(2));
P_=(1+(r2p(YZ))/6+(r2p(Y2Z2))/120);
B=rxr(Z,p2r(P_));//IN BOOK IT'S 1941.56 DUE TO TYPOLOGICAL ERROR
printf("B= %.2f∠%.2f° ohm\n",B(1),B(2));
D=A;
Vr_=poly(0, 'Vr');
Ir=[P/(3*pf) -acosd(pf)];
C1=A(1);//constant of A*Vr
C2=B(1)*Ir(1);//constant of B*I
BI_ang=B(2)+Ir(2);//angle between B and I
BI= C2*(cosd(BI_ang)+%i*sind(BI_ang));
AV= C1*(cosd(1.41)+%i*sind(1.41));//1.41= Angle between A and V
com=numer(((real(AV)*Vr_+real(BI)/Vr_)^2+(imag(AV)*Vr_+imag(BI)/Vr_)^2-Vs^2));//considering only numerator part
Vr=roots(com);
Vr1=99746;//by selecting the positive value & near to sending end voltage
Vrl=sqrt(3)*Vr1/1000;
printf("Receiving end line voltage= %.2f kV\n",Vrl);
Irl=Ir(1)/Vr1;
printf("Receiving end line current= %.0f A",Irl);
