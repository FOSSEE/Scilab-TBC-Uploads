// calculating exciting current and corresponding flux linkages

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

A_g=(.04+l_g)^2;
B_g=phi/A_g;

disp(current(B_g),'fringing taken into account,current(A)=');
