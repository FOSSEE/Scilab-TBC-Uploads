//Exa 6.10
clc;
clear;
close;
//given data
VP=-6;//in Volt
IDSS=8;//in mA
disp("We have ID=IDSS*[1-VGS/VP]^2");
disp("Mutual conductance, gm=(delID/delVGS)=IDSS*2*[1-VGS/VP]*(-1/VP)=(-2*IDSS/VP)*[1-VGS/VP]");
//For VGS=0
VGS=0;//in Volt
IDSS=1:8;//in mA
for i=1:8
    gm(i)=-2*IDSS(i)/VP
end
title('gm versus IDSS');
xlabel('gm(in mS)');
ylabel('IDSS(in mA)');
plot2d(gm,IDSS);
disp("Clearly the plot of gm vs IDSS for VD=-6V, IDSS=8mA is a straight line of slope=-2/VP=-(2/-6)=1/3");
