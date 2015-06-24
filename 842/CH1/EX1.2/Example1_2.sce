//clear//
//Example 1.2:Time Scaling
//SIGNALS & SYSTEMS, Second Edition
//V.OPPENHEIM, S.WILLSKY, S.HAMID NAMWAB
//PHI, 2008 Edition
//Page 11
clear;
clc;
close;
t3 = 0:1/100:4/3;
t4 = 0:1/length(t3):1;
Mid =ceil(length(t3)/2);
for i = 1:Mid
  x3(i) = 1 ;
end
for i = Mid+1:length(t3)
  x3(i) = 1-t4(i-Mid);
end
figure
a=gca();
plot2d(t3,x3) 
a.thickness=2;
xtitle('Time Scaling x(3t/2)')
