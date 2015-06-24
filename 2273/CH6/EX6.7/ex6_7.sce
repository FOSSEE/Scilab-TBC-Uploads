//calculate equivalent T & π constants
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
    a(2)=180+atand(imag(z)/real(z));
endfunction

//given
A=[0.9 1];
B=[85 75];
C=[0.0013 91];
D=A;
Z=rdr(p2r(2*(r2p(A)-1)),C);
printf("Equivalent T network\n");
printf("Series Impedance Z=%.2f∠%.2f° ohm\n",Z(1),Z(2));//IN BOOK Z=156.92∠80.5° BECAUSE OF ROUNDING OFF THINGS
Y=C;
printf("Shunt Admitttance Y=%.4f∠%.0f° siemens\n",Y(1),Y(2));
printf("Equivalent π network\n");
Zp=B;
Yp=rdr(p2r(2*(r2p(A)-1)),B);
printf("Series Impedance Z=%.f∠%.f° ohm\n",Zp(1),Zp(2));
printf("Shunt Admitttance Y=%.4f∠%d° siemens\n",Yp(1),Yp(2));
