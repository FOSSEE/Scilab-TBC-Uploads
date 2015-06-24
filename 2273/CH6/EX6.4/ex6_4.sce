//calculate constants of equivalent circuit of line
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
P=100*10^6;//VA
Vrl=220*1000;//V
Zse_=complex(1,6);
Zseo=(Zse_*(Vrl^2))/(P*100);
Zse=[abs(Zseo) atand(imag(Zseo)/real(Zseo))];
A=[1 0.8];
B=[169.52 84.6];
C=[0.00135 90];
D=A;
CZ=rxr(C,Zse);
Ao_=r2p(A)+r2p(CZ);
Ao=[abs(Ao_) atand(imag(Ao_)/real(Ao_))];
printf("Ao = %.5f∠%.2f°\n",Ao(1),Ao(2));
DZ=rxr(D,Zse);
Bo_=r2p(B)+r2p(DZ);
Bo=[abs(Bo_) atand(imag(Bo_)/real(Bo_))];
printf("Bo = %.2f∠%.2f° ohm\n",Bo(1),Bo(2));
Co=C;
Do=A;
printf("Co = %.5f∠%d° siemens\n",Co(1),Co(2));
printf("Do = %d∠%.1f°",Do(1),Do(2));
//the value of Ao is different because book has a calculation mistake and according to book it is 0.9799∠11.49°
