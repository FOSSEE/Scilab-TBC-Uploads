//calculate Ao and Bo and Co and Do constants
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

function[a]=p2r(z)//Funtion for polar to rectangular
    a(1)=abs(z);
    a(2)=atand(imag(z)/real(z));
endfunction

//given
Zt=[100 70];
Yt=[0.0002 -75];
A=[0.92 5.3];
B=[65.3 81];
D=A;
AD_=r2p(rxr(A,D))-1;//A*D-1
AD=[abs(AD_) 180+atand(imag(AD_)/real(AD_))];
C=rdr(AD,B);//(A*D-1)/B
BYt=rxr(Yt,B);
CZt=rxr(C,Zt);
YtZt_=r2p(rxr(Yt,Zt))*2+1;//1+2*Yt*Zt
P=[abs(YtZt_) atand(imag(YtZt_)/real(YtZt_))];//Let P=1+2*Yt*Zt
YtZto=r2p(rxr(Yt,Zt))+1;//1+Yt*Zt
Q=[abs(YtZto) atand(imag(YtZto)/real(YtZto))];//Let Q=1+Yt*Zt
Ao_=r2p(rxr(A,P))+r2p(BYt)+r2p(rxr(CZt,Q));//A*(1+2*Yt*Zt)+B*Yt+C*Zt(1+Yt*Zt)
Ao=[abs(Ao_) atand(imag(Ao_)/real(Ao_))];
printf("Ao = %.4f∠%.2f°\n",Ao(1),Ao(2));
DZt=rxr(D,Zt);//D*Zt
CZt2=rxr(CZt,Zt);//C*Zt^2
Bo_=r2p(B)+2*r2p(DZt)+r2p(CZt2);//2*A*Zt+B+C*Zt^2
Bo=[abs(Bo_) atand(imag(Bo_)/real(Bo_))];
printf("Bo = %.2f∠%.2f° ohm\n",Bo(1),Bo(2));
BYt2=r2p(rxr(BYt,Yt));//B(Yt^2)
AYt=rxr(A,Yt);//A*Yt
AYt_YZt=rxr(p2r(2*r2p(AYt)),p2r(1+YtZto)/2);//2*A*Yt(1+Y*Zt)
YtZt2=rxr(Q,Q);//(1+Yt*Zt)^2
Co_=r2p(AYt_YZt)+BYt2+r2p(rxr(C,YtZt2));//2*A*Yt(1+Y*Zt)+B*Yt^2+C*(1+Yt*Zt)^2
Co=[abs(Co_) atand(imag(Co_)/real(Co_))];;
Do=Ao;
printf("Co = %.4f∠%.1f° siemens\n",Co(1),Co(2));
printf("Do = %.4f∠%.2f°",Do(1),Do(2));
