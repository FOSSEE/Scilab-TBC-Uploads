//clear//
//Example 1.1: Time Shifting
//SIGNALS & SYSTEMS, Second Edition
//V.OPPENHEIM, S.WILLSKY, S.HAMID NAMWAB
//PHI, 2008 Edition
//Page 10
clear;
clc;
close;
t = 0:1/100:1;
for i = 1:length(t)
  x(i) = 1 ;
end
for i = length(t)+1:2*length(t)
  x(i) = 1-t(i-length(t));
end
t1 = 0:1/100:2;
t2 = -1:1/100:1;
//t3 = 0:1/100:4/3;
//t4 = 0:1/length(t3):1;
//Mid =ceil(length(t3)/2);
//for i = 1:Mid
//  x3(i) = 1 ;
//end
//for i = Mid+1:length(t3)
//  x3(i) = 1-t4(i-Mid);
//end
figure
a=gca();
plot2d(t1,x(1:$-1)) 
a.thickness=2;
xtitle('The signal x(t)')
figure
a=gca();
plot2d(t2,x(1:$-1))
a.thickness=2;
a.y_location = "middle";
xtitle('The signal x(t+1)')
figure
a=gca();
plot2d(t2,x($:-1:2))
a.thickness=2; 
a.y_location = "middle";
xtitle('The signal x(-t+1)')
