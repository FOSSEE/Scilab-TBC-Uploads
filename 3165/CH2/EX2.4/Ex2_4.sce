//unit impulse//
clc;
f=-2:1:2;//input//
y=[zeros(1,2),ones(1,1),zeros(1,2)];//output//
subplot(2,2,1);
plot2d3(f,y);
xlabel('a(n)');
ylabel('amplitude');
title('unit impulse');
