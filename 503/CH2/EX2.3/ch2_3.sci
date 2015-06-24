// Determination of mmf of the exciting coil

clc;
U_o=4*%pi*10^-7;
A1=.0001;
A2=.0002;
l1=.025*10^-2;
l2=.02*10^-2;
phi=.75*10^-3;
function [Re]=reluctance(l,U_r,A)
    Re=l/(U_o*U_r*A);
endfunction

function [Ni]=mmf(R1,R2,R3)
    Ni=phi*(R3+((R1*R2)/(R1+R2)));
endfunction
R_g1=reluctance(l1,1,A1);
R_g2=reluctance(l2,1,A1);
R_g3=reluctance(l2,1,A2);
disp(mmf(R_g1,R_g2,R_g3),'when U_r=1,mmf(AT)');
L1=l1*2*10^3;
L2=l2*10^3;
R_c1=reluctance(L1,5000,A1);
R_c2=reluctance(L1,5000,A1);
R_c3=reluctance(L2,5000,A2);
disp(mmf(R_c1+R_g1,R_c2+R_g2,R_c3+R_g3),'when U_r=5000,mmf(AT)');