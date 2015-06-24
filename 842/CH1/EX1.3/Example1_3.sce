//clear//
//Example 1.3:Time Scaling and Time Shifting
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
t5 = -2/3:1/100:2/3;
figure
a=gca();
plot2d(t5,x3) 
a.thickness=2;
a.y_location ="middle";
xtitle('Time Scaling and Time Shifting x((3t/2)+1)')
