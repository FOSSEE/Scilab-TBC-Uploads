//clear//
//Caption:Signal space diagram for coherent QPSK waveform
//Figure7.6 Signal Space Diagram for coherent QPSK system
clear
clc;
close;
M =4;
i = 1:M;
y = cos((2*i-1)*%pi/4)-sin((2*i-1)*%pi/4)*%i;
annot = dec2bin([0:M-1],log2(M));
disp(y,'coordinates of message points')
disp(annot,'dibits value')
figure;
a =gca();
a.data_bounds = [-1,-1;1,1];
a.x_location = "origin";
a.y_location = "origin";
plot2d(real(y(1)),imag(y(1)),-2)
plot2d(real(y(2)),imag(y(2)),-4)
plot2d(real(y(3)),imag(y(3)),-5)
plot2d(real(y(4)),imag(y(4)),-9)
xlabel('                                             In-Phase');
ylabel('                                             Quadrature');
title('Constellation for QPSK')
legend(['message point 1 (dibit 10)';'message point 2 (dibit 00)';'message point 3 (dibit 01)';'message point 4 (dibit 11)'],5)
