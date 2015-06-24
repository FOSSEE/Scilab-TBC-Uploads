//find sending end voltage, charging current, power
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

function [z]=rdr(A,B)//Function for the division in rectangular form
    z(1)=A(1)/B(1)
    z(2)=A(2)-B(2)
    endfunction

//given
Vrl=230*1000;//V
Vs=[Vrl/sqrt(3) 0];
Ir=[0 0];
A=[0.938 1.2];
B=[131.2 72.3];
C=[0.001 90];
Vr_=r2p(rdr(Vs,A));
theta1=atand((imag(Vr_)/real(Vr_)));
Vr=[abs(Vr_) theta1];
Vrl=sqrt(3)*abs(Vr_);
printf("Sending end voltage= %.1fkV\n",Vrl/1000);
Ic=rxr(C,Vr);
printf("Line charging current= %.2f∠%.1f°A\n",Ic(1),Ic(2));
Vrl_=220;//kV
Vsl=230;//kV
Pr=Vrl_*Vsl/B(1)-(A(1)/B(1))*(Vrl_^2)*(cosd(B(2)-A(2)));//IN BOOK IT IS 272.58 MW DUE TO TYPOLOGICAL ERROR
printf("Maximum power transmitted= %f MW\n",Pr);
Qr=(A(1)/B(1))*(Vrl_^2)*(sind(B(2)-A(2)));
printf("Recieving reactive power required at recieving end= %.2f MVAR",Qr);
