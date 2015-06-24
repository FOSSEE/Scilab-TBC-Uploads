//Example6_39  // Determine a load current in a V to I converter
clc;
clear;
close;
R1 = 10*10^3 ;
R2 = 10*10^3 ;
R3 = 1*10^3 ;
R4 = 1*10^3 ;
VI = -5 ;

// The Load Current
iL = -VI/R3 ;
disp('The load current iL is = '+string(iL)+ ' A');

VL = 0.5 ;
// The  Current i3 and iA
i3 = VL/R3 ;
disp('The current i3 is = '+string(i3)+ ' A');

iA = i3+iL ;
disp('The current iA is = '+string(iA)+ ' A');

// the output voltage 
Vo = (iA*R3)+VL ;
disp('The output voltage is = '+string(Vo)+ ' V');

ZL =100 ;
// The current i1 and i2 
//i1 = (VI-iL*ZL)/R1 ;
i1 = (iL*ZL-Vo)/R2 ;
disp('The current i1 is = '+string(i1)+ ' A');

i2 = i1 ;
disp('The current i2 is = '+string(i2)+ ' A');
