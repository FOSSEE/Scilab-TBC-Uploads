clc
//ex10.3
R=1*10^3;
//diode characteristic cannot be plotted
//case a)V_ss=15
V_ss=15;
V_D=[-15:0.001:0];
//from the intersection of load line and diode characteristic
V_o=10;
disp(V_o,'output voltage for Vss=15 in volts')
//case b)V_ss=20
V_ss=20;
V_D=[-20:0.001:0];
//from the intersection of load line and diode characteristic
V_o=10.5;
disp(V_o,'output voltage for Vss=20 in volts')
