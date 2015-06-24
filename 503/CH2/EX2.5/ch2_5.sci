// determination of excitation coil mmf
clc;
U_o=4*%pi*10^-7;
A1=25*10^-4;
A2=12.5*10^-4;
A3=25*10^-4;
l1=.5;            //length of side limb(ab+cd)
l2=.2;          //length of central limb(ad)
l3=.5;            //length of side limb(dea)
l4=.25*10^-3;          //length of air gap
phi=.75*10^-3;
N=500;
function [B]=fd(A)
    B=phi/A;
    endfunction
function [F]=flux(B,l)
    F=B*l/(U_o);
    endfunction
function [f]=fl(H,l)
f=H*l;
endfunction
B_abcd=fd(A1);
F_bc=flux(B_abcd,l4);
disp(B_abcd,'B_abcd(T)');
H_ab=200;                        //for cast iron for B=0.3
F_abcd=fl(H_ab,l1);
F_ad=F_abcd+F_bc;
H_ad=F_ad/l2;
disp(H_ad,'H_ad(AT/m)');
B_ad=1.04                        //for cast iron for H=800
phi_ad=B_ad*A2;
phi_dea=phi+phi_ad;
B_dea=phi_dea/A3;
H_dea=500                         //for cast iron for B=.82
F_dea=H_dea*l3;
F=F_dea+F_ad;
disp(F,'reqd mmf(AT)');
