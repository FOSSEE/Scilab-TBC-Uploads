//clear//
//Caption:Signal Space diagram for coherent BFSK
//Figure7.4 Signal Space Diagram for coherent BFSK system
clear
clc;
close;
M =2;
y = [1,0;0,1];
annot = dec2bin([M-1:-1:0],log2(M));
disp(y,'coordinates of message points')
disp(annot,'Message points')
figure;
a =gca();
a.data_bounds = [-2,-2;2,2];
a.x_location = "origin";
a.y_location = "origin";
plot2d(y(1,1),y(1,2),-9)
plot2d(y(2,1),y(2,2),-5)
xlabel('                                                                      In-Phase');
ylabel('                                                                    Quadrature');
title('Constellation for BFSK')
legend(['message point 1 (binary 1)';'message point 2 (binary 0)'],5)
