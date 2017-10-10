clear;
clc;
S=100;
p=50;
pf=.95;
v=11;
Z=complex(0,(.15*.5)/(.15+.5));
disp(Z);
V=1;
If=V/Z;

mprintf("Subtransient fault currnt is %.4f pu\n",imag(If));
Ig=If*(.15/(.15+.5));
Im=If*(.5/(.15+.5));
mprintf("Subtransient fault currnt in motor is %.4f pu\n",imag(Im));
mprintf("Subtransient fault currnt in generator is %.4f pu\n",imag(Ig));
Ibm=(S)/(sqrt(3)*v);

function [A] = p2z(R,Theta)
 if argn(2) <> 2 then
    error("incorrect number of arguments.");
 end
 if ~and(size(R) == size(Theta)) then
   error("arguments must be of the same dimension.");
 end
 A = R.*exp(%i*%pi*Theta/180.);
endfunction
Ipm=p2z((p)/(sqrt(3)*v*pf*Ibm),-(acosd(pf)));
disp(Ipm);
Igg=complex(0,-2)+Ipm;
Imm=Im-Ipm;
mprintf("Subtransient fault currnt in generator including pre fault is %f%f pu\n",real(Igg),imag(Igg));
mprintf("Subtransient fault currnt in motor including pre fault is %f%f pu\n",real(Imm),imag(Imm));
