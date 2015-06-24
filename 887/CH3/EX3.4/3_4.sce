clc
//ex3.4
L=10*10^-2;      //length
W=20*10^-2;      //width
d=0.1*10^-3;      //distance between plates
A=L*W;      //area
E_o=8.85*10^-12;      //dielectric constant of vacuum
//dielectric is air
E_r=1;      //relative dielectric constant of air
E=E_r*E_o;      //dielectric constant
C=E*A/d;      //capacitance
disp('When the dielectric is air, capacitance in pF is')      //pF-pico Farad(10^-12)
disp(C*10^12)
//dielectric is mica
E_r=7;      //relative dielectric constant of mica
E=E_r*E_o;      //dielectric constant
C=E*A/d;      //capacitance
disp('When the dielectric is mica, capacitance in pF is')      //pF-pico Farad(10^-12)
disp(C*10^12)
