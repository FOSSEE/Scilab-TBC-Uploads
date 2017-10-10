clear; close; clc;

cox=1.6*10^(-6);//from_previous_example
v=0.4;
vto=0.08;//from previus example
qe=1.602*10^(-19);
n1=(cox*(v-vto))/qe;
disp(n1,'ion implant doses(in ions/cm^2)');
