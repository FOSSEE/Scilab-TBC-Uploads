// Example 10.21: (a) AVo, Approximate value of fH
//                (b) Frequency of the nearest non-dominant pole
clc, clear
gm=1e-3; // in mho
Rd=40e3; // in ohms
Cgs=5e-12; // in farads
Cgd=1e-12; // in farads
Cds=1e-12; // in farads

function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction

disp("Part (a)");
RS=5e3; // in ohms
RD1=40e3; // in ohms
RD2=10e3; // in ohms
// From AC model of cascade amplifier in Fig. 10.80
Rds1=40e3; // in ohms
Rds2=40e3; // in ohms
R11_0=RS; // in ohms
RL1=parallel(Rds1,RD1); // in ohms
R22_0=RS+RL1+gm*RS*RL1; // in ohms
R33_0=RL1; // in ohms
RL2=parallel(Rds2,RD2); // in ohms
R44_0=RL1+RL2+gm*RL1*RL2; // in ohms
R55_0=RL2; // in ohms
C1=Cgs; // in farads
C2=Cgd; // in farads
C3=Cds+Cgs; // in farads
C4=Cds; // in farads
C5=Cds; // in farads
a1=C1*R11_0+C2*R22_0+C3*R33_0+C4*R44_0+C5*R55_0; // in seconds
fH=1/(2*%pi*a1); // in hertz
fH=fH*1e-6; // in Mega-hertz
AVo=gm*RL1*gm*RL2;
disp(AVo,"AVo =");
disp(fH,"Approximate value of fH (MHz) =");

disp("Part (b)");
R22_1=RL1; // in ohms
R33_1=RL1; // in ohms
R44_1=R44_0; // in ohms
R55_1=RL2; // in ohms
R33_2=parallel(RL1,parallel(1/gm,RS)); // in ohms
R44_2=R33_2+RL2+gm*R33_2*RL2; // in ohms
R55_2=R55_0; // in ohms
R44_3=RL2; // in ohms
R55_3=RL2; // in ohms
R55_4=parallel(RL1,parallel(1/gm,RL2)); // in ohms
a2=R11_0*C1*(R22_1*C2+R33_1*C3+R44_1*C4+R55_1*C5)+R22_0*C2*(R33_2*C3+R44_2*C4+R55_2*C5)+R33_0*C3*(R44_3*C4+R55_3*C5)+R44_0*C4*R55_4*C5; // in seconds
p2=a1/a2;
f=p2/(2*%pi); // in hertz
f=f*1e-6; // in Mega-hertz
disp(f,"Frequency of the nearest non-dominant pole (MHz) =");