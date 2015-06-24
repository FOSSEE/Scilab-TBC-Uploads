// Example 10.12: (a) Approximate value of fH
//                (b) Approximate location of the closest non-dominant pole
clc, clear
RS=600; // in ohms
RC1=1.5e3; // in ohms
RC2=600; // in ohms
r_pi1=1.2e3; // in ohms
gm1=0.1; // in mho
C1=24.5e-12; // in farads
C_pi1=C1; // in farads
C2=0.5e-12; // in farads
C_mu1=C2; // in farads
r_pi2=2.4e3; // in ohms
gm2=0.05; // in mho
C3=19.5e-12; // in farads
C_pi2=C3; // in farads
C4=0.5e-12; // in farads
C_mu2=C4; // in farads

function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction

disp("Part (a)");
R11_0=parallel(RS,r_pi1); // in ohms
R33_0=parallel(RC1,r_pi2); // in ohms
R22_0=R11_0*(1+gm1*R33_0)+R33_0; // in ohms
R44_0=R33_0*(1+gm2*RC2)+RC2; // in ohms
a1=R11_0*C1+R22_0*C2+R33_0*C3+R44_0*C4; // in seconds
fH=1/(2*%pi*a1); // in hertz
fH=fH*1e-6; // in Mega-hertz
disp(fH,"fH (MHz) =");

disp("Part (b)");
R33_1=R33_0; // in ohms
R44_1=R44_0; // in ohms
// From Fig. 10.61(a)
R22_1=R33_0; // in ohms
// From Fig. 10.61(b)
R44_3=RC2; // in ohms
// From Fig. 10.61(c)
R33_2=parallel(parallel(r_pi2,RC2),parallel(1/gm1,R11_0));
R44_2=R33_2*(1+gm2*RC2)+RC2; // in ohms
a2=R11_0*C1*R22_1*C2+R11_0*C1*R33_1*C3+R11_0*C1*R44_1*C4+R22_0*C2*R33_2*C3+R22_0*C2*R44_2*C4+R33_0*C3*R44_3*C4; // in seconds
p2=a1/a2;
f2=p2/(2*%pi); // in hertz
f2=f2*1e-6; // in Mega-hertz
disp(f2,"Approximate location of the closest non-dominant pole (MHz) =");