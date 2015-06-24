// Exciting current calculation needed to setup reqd flux

clc;
U_o=4*%pi*10^-7;
A1=800*10^-6;
A2=600*10^-6;
l1=1*10^-3;            //air gap length
l2=160*10^-3;          //length of central limb
l3=400*10^-3;          //length of side limb
phi=.8*10^-3;
N=500;
function [B]=fd(A)
   B=phi/A;
endfunction

function [F]=mmf(l,B)
    F=l/B;
endfunction
//air gap
B_g=fd(A1);
F_g=mmf(l1,B_g)/U_o;disp(F_g,'F_g(AT)');
//central limb
B_c=B_g;
F_c=mmf(l2,B_c)/10^-3;disp(F_c,'F_c(AT)');
//outer limb                flux is divided into half
B_o=fd(A2)/2;
F_o=mmf(l3,B_o)/(4*10^-3);disp(F_o,'F_o(AT)');
i=(F_g+F_c+F_o)/N;            //    total mmf/no of turns
disp(i,'exciting current(A)');
