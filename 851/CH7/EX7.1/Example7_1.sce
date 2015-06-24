//clear//
//Caption:Waveforms of Different Digital Modulation techniques
//Example7.1 Signal Space Diagram for coherent QPSK system
clear;
clc;
close;
M =4;
i = 1:M;
t = 0:0.001:1;
for i = 1:M
  s1(i,:) = cos(2*%pi*2*t)*cos((2*i-1)*%pi/4);
  s2(i,:) = -sin(2*%pi*2*t)*sin((2*i-1)*%pi/4);
end
S1 =[];
S2 = [];
S = [];
Input_Sequence =[0,1,1,0,1,0,0,0];
m = [3,1,1,2];
for i =1:length(m)
  S1 = [S1 s1(m(i),:)];
  S2 = [S2 s2(m(i),:)];
end
S = S1+S2;
figure
subplot(3,1,1)
a =gca();
a.x_location = "origin";
plot(S1)
title('Binary PSK wave of Odd-numbered bits of input sequence') 
subplot(3,1,2)
a =gca();
a.x_location = "origin";
plot(S2)
title('Binary PSK wave of Even-numbered bits of input sequence') 
subplot(3,1,3)
a =gca();
a.x_location = "origin";
plot(S)
title('QPSK waveform') 
//-sin((2*i-1)*%pi/4)*%i;
//annot = dec2bin([0:length(y)-1],log2(M));
//disp(y,'coordinates of message points')
//disp(annot,'dibits value')
//figure;
//a =gca();
//a.data_bounds = [-1,-1;1,1];
//a.x_location = "origin";
//a.y_location = "origin";
//plot2d(real(y(1)),imag(y(1)),-2)
//plot2d(real(y(2)),imag(y(2)),-4)
//plot2d(real(y(3)),imag(y(3)),-5)
//plot2d(real(y(4)),imag(y(4)),-9)
//xlabel('                                             In-Phase');
//ylabel('                                             Quadrature');
//title('Constellation for QPSK')
//legend(['message point 1 (dibit 10)';'message point 2 (dibit 00)';'message point 3 (dibit 01)';'message point 4 (dibit 11)'],5)
