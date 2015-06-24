//determination of self and mutual inductance b/w 2 coils

clc;
U_o=4*%pi*10^-7;
U_r=1600;
A1=4*10^-4;
A2=4*10^-4;
A0=2*10^-4;
N1=500;
N2=1000;

l1=.01*((6+0.5+1)*2+(4+2));
l2=.01*((3+0.5+1)*2+(4+2));
l0=.01*(4+2);
function [R]=reluc(l,A)
    R=l/(U_o*U_r*A);
endfunction
R1=reluc(l1,A1);
R2=reluc(l2,A2);
R0=reluc(l0,A0);

function [re]=re(r0,r1,r2)
    re=r0+((r1*r2)/(r1+r2));
endfunction

disp('coil 1 excited with 1A');
R_1=re(R1,R0,R2);
phi1=N1/R_1;
phi2=phi1*R0/(R0+R2);
L11=N1*phi1;disp(L11,'self inductance(H)');
M21=N2*phi2;disp(M21,'mutual inductance(H)');
disp('coil 2 excited with 1A');
R_2=re(R2,R0,R1);
phi2=N2/R_2;
L22=N2*phi2;disp(L22,'self inductance(H)');
M12=M21;disp(M12,'mutual inductance(H)');

