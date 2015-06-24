//clear//
//Caption:Signal Space diagram for coherent BPSK
//Figure7.2 Signal Space Diagram for coherent BPSK system
clear
clc;
close;
M =2;
i = 1:M;
y = cos(2*%pi+(i-1)*%pi);
annot = dec2bin([length(y)-1:-1:0],log2(M));
disp(y,'coordinates of message points')
disp(annot,'Message points')
figure;
a =gca();
a.data_bounds = [-2,-2;2,2];
a.x_location = "origin";
a.y_location = "origin";
plot2d(real(y(1)),imag(y(1)),-9)
plot2d(real(y(2)),imag(y(2)),-5)
xlabel('                                                                      In-Phase');
ylabel('                                                                      Quadrature');
title('Constellation for BPSK')
legend(['message point 1 (binary 1)';'message point 2 (binary 0)'],5)
