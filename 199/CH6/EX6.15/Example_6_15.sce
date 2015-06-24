// Chapter6
// Page.No-230, Figure.No-6.23
// Example_6_15
// Output voltage of an integrator
// Given 
clear;clc;
Vin=2; // Input voltage in volt
Vo0=0;
Vo1=-integrate('2','t',0,1);
disp(Vo1)
Vo2=-integrate('2','t',1,2)+Vo1;
disp(Vo2)
Vo3=-integrate('2','t',2,3)+Vo2;
disp(Vo3)
Vo4=-integrate('2','t',3,4)+Vo3;
disp(Vo4)
Vo=[Vo0 Vo1 Vo2 Vo3 Vo4];
t=[0 1 2 3 4];
plot(t,Vo);
title('Output Voltage');
xlabel('t');
ylabel('Vo');

