// Example 10.18: Upper 3 dB frequency
clc, clear
r_pi1=1.4e3; // in ohms
r_pi2=2.8e3; // in ohms
gm1=0.15; // in mho
gm2=0.05; // in mho
C_pi1=20e-12; // in farads
C_pi2=25e-12; // in farads
C_mu1=0.5e-12; // in farads
C_mu2=C_mu1 // in farads
bta1=gm1*r_pi1;
bta2=gm2*r_pi2;
// From Fig. 10.71
RS=600; // in ohms
RC1=1.5e3; // in ohms
RL2=600; // in ohms
// From ac model in Fig. 10.72
R_pi1=RS*r_pi1/(RS+r_pi1); // in ohms
RL1=RC1*r_pi2/(RC1+r_pi2); // in ohms
R_mu1=R_pi1+RL1+gm1*RL1*R_pi1; // in ohms
R_pi2=RL1; // in ohms
R_mu2=R_pi2+RL2+gm2*RL2*R_pi2; // in ohms
a11=C_pi1*R_pi1+C_mu1*R_mu1; // in seconds
a12=C_pi2*R_pi2+C_mu2*R_mu2; // in seconds
a1=a11+a12; // in seconds
fH1=1/(2*%pi*a11); // in hertz
fH2=1/(2*%pi*a12); // in hertz
fH=1/(2*%pi*a1); // in hertz
fH1=fH1*1e-6; // in Mega-hertz
fH2=fH2*1e-6; // in Mega-hertz
fH=fH*1e-6; // in Mega-hertz
AV1=-bta1*RC1/(RS+r_pi1); // Gain of first stage
AV2=-bta2*RL2/(RC1+r_pi2); // Gain of second stage
AV=AV1*AV2; // Gain of cascade
disp(fH,"Upper 3 dB frequency (MHz) =");
disp("Bandwidth:");
disp(fH1,"Stage 1 only (MHz) =");
disp(fH2,"Stage 2 only (MHz) =");
disp(fH,"Cascade (MHz) =");
disp("Gain:");
disp(abs(AV1),"Stage 1 only =");
disp(abs(AV2),"Stage 2 only =");
disp(AV,"Cascade =");
disp("Gain-bandwidth product:");
disp(fH1*abs(AV1)*1e6,"Stage 1 only (MHz) =");
disp(fH2*abs(AV2)*1e6,"Stage 2 only (MHz) =");
disp(fH*AV*1e6,"Cascade (MHz) =");