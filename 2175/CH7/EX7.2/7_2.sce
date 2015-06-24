clc;
//part I
%H2=0.494;
%CO=0.18;
%CH4=0.2;
%C4H4=0.02;
%O2=0.004;
%N2=0.062;
%CO2=0.04;

O_H2=%H2/2;
O_CO=%CO/2;
O_CH4=%CH4*2;
O_C4H4=%C4H4*6;
O_O2=-%O2*1;

C_CO=%CO;
C_CH4=%CH4;
C_C4H8=4*%C4H4;
C_CO2=%CO2;

H_H2=%H2;
H_CH4=2*%CH4;
H_C4H8=4*%C4H4;

O_Tot=O_C4H4+O_CH4+O_CO+O_H2+O_O2;
C_Tot=C_CO+C_CH4+C_C4H8+C_CO2;
H_Tot=H_H2+H_CH4+H_C4H8;

AF=O_Tot/0.21;
disp(AF,"stoichiometric A/F ratio is:")

//partII

actual_AF=AF+0.2*AF;
Ass_N2=0.79*actual_AF;
Exs_O2=(0.21*actual_AF)-O_Tot;
N2_Tot=Ass_N2+%N2;

Tot_wet=H_Tot+C_Tot+Exs_O2+N2_Tot;
Tot_dry=C_Tot+Exs_O2+N2_Tot;

C_dry=(C_Tot)/Tot_dry*100;
O_dry=(Exs_O2)/Tot_dry*100;
N_dry=(N2_Tot)/Tot_dry*100;

C_wet=(C_Tot)/Tot_wet*100;
O_wet=(Exs_O2)/Tot_wet*100;
N_wet=(N2_Tot)/Tot_wet*100;
H_wet=(H_Tot)/Tot_wet*100;

disp("Analysis by volume of the wet product of CO2,H2O,O2,N2 respectively is:");
disp(N_wet,O_wet,H_wet,C_wet)

disp("Analysis by volume of the dry product of CO2,O2,N2 respectively is:");
disp(N_dry,O_dry,C_dry)
