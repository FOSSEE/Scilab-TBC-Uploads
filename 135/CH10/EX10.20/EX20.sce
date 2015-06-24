// Example 10.20: (a) Low 3 dB frequency
//                (b) High 3 dB frequency
clc, clear
// From Fig. 10.76
C_gd1=2e-12; // in farads
C_gs1=5e-12; // in farads
gm1=10e-3; // in mho
C1=1e-6; // in farads
C_gd2=2e-12; // in farads
C_gs2=5e-12; // in farads
gm2=10e-3; // in mho
C2=10e-6; // in farads
// From low-frequency equivalent cicuit in Fig. 10.77
RS=0.2e3; // in ohms
RG1=50e3; // in ohms
RS1=0.25e3; // in ohms
RS2=0.15e3; // in ohms
RD2=5e3; // in ohms
R=10e3; // in ohms
C3=5.3e-6; // in farads

function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction

disp("Part (a)");
// From low-frequency equivalent cicuit in Fig. 10.77
tau1=C1*(RS+RG1); // in seconds
R_22=RD2+R; // in ohms
tau2=C2*R_22; // in seconds
R_33=parallel(RS2,1/gm2); // in ohms
tau3=C3*R_33; // in ohms
fL=(1/tau1+1/tau2+1/tau3)/(2*%pi); // in hertz
disp(fL,"Low 3 dB frequency (Hz) =");

disp("Part (b)");
// From high frequency equivalent cicuit in Fig. 10.78
R_gd1=parallel(RS,RG1); // in ohms
// From Fig. 10.79
R_gs1=(R_gd1+RS1)/(1+gm1*RS1); // in ohms
R_gs2=parallel(RS1,1/gm2); // in ohms
R_gd2=R_gs2+parallel(RD2,R)+R_gs2*parallel(RD2,R)*gm2; // in ohms
a1=C_gd1*R_gd1+C_gs1*R_gs1+C_gs2*R_gs2+C_gd2*R_gd2; // in seconds
fH=1/(2*%pi*a1); // in hertz
fH=fH*1e-6; // in Mega-hertz
disp(fH,"High 3 dB frequency (MHz) =");