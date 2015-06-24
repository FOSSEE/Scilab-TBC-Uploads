//calculate constants of equivalent circuit of line
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
Zse=[12 80];
A=[0.9 1];
B=[26 68];
D=A;
AD_=r2p(rxr(A,D))-1;
AD=[abs(AD_) atand(imag(AD_)/real(AD_))];
C=rdr(AD,B);
CZ=rxr(C,Zse);
Ao_=r2p(A)+r2p(CZ);
Ao=[abs(Ao_) atand(imag(Ao_)/real(Ao_))];
printf("Ao = %.4f∠%.2f°\n",Ao(1),Ao(2));
DZ=rxr(D,Zse);
CZ2=rxr(CZ,Zse)
Bo_=r2p(B)+2*r2p(DZ)+r2p(CZ2);
Bo=[abs(Bo_) atand(imag(Bo_)/real(Bo_))];
printf("Bo = %.2f∠%.2f° ohm\n",Bo(1),Bo(2));
Co=C;
Do=Ao;
printf("Co = %.5f∠%d° siemens\n",Co(1),Co(2));
printf("Do = %.4f∠%.2f°",Do(1),Do(2));
//there is a mistake in the value of C(=0.00738∠2.55°) so all the values are changed
