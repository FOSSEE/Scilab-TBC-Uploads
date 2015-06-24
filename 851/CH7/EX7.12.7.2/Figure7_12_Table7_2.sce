//clear//
//Caption:Signal space diagram for MSK diagram
//Figure7.12 Signal Space Diagram for coherent MSK system
//Table 7.2 signal space characterization of MSK
clear
clc;
close;
M =2;
teta_0 = [0,%pi];
teta_tb = [%pi/2,-%pi/2];
for i = 1:M
  s1(i) = cos(teta_0(i));
  s2(i) = -sin(teta_tb(i));
end
y = [s1(1),s2(1);s1(2),s2(1);s1(2),s2(2);s1(1),s2(2)];
disp(y,'coordinates of message points')
figure;
a =gca();
a.data_bounds = [-2,-2;2,2];
a.x_location = "origin";
a.y_location = "origin";
plot2d(y(1,1),y(1,2),-2)
plot2d(y(2,1),y(2,2),-4)
plot2d(y(3,1),y(3,2),-6)
plot2d(y(4,1),y(4,2),-9)
xlabel('                                                                      In-Phase');
ylabel('                                                                    Quadrature');
title('Constellation for MSK')
legend(['message point 1 (0, %pi/2)';'message point 2 (%pi, %pi/2)';'message point 3  (%pi,  - %pi/2)';'message point 4(0, - %pi/2)'],5)
