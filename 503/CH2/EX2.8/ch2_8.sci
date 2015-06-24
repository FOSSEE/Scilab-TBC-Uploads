//determination of R_c,R_g,L,W_f

clc;
U_o=4*%pi*10^-7;
U_r=6000;
l_g=0.0006;
l_c=.40;
A_c=.04*.04;
B_c=1.2;
N=600;
function [i]=current(B_g)
    i=(1/(U_o*N))*(((B_c*l_c)/U_r)+(B_g*l_g));
endfunction
disp(current(B_c),'neglecting fringing,current(A)=');

    phi=B_c*A_c;
disp(phi,'flux(Wb)=');

function [lmda]=flux_linkage(phi)
    lmda=N*phi;
endfunction
disp(flux_linkage(phi),'flux linkages(Wb-turns)=');

function [R]=reluc(l,U,A)
    R=l/(U_o*U*A);
endfunction
R_c=reluc(l_c,U_r,A_c);disp(R_c,'R_c=');
R_g=reluc(l_g,1,A_c);disp(R_g,'R_g=');

L=N^2/(R_c+R_g);
disp(L,'coil inductance(H)');

W_f=(N*phi)^2/(2*L);
disp(W_f,'energy stored in the magnetic field(J)');

