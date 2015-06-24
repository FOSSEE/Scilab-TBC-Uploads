//Page Number: 4.9
//Example 4.3
clc;
//Given
fc=1D+6; //Hz
kf=5;
mt=1D+5; //Hz

//(a) mi(t) with fm
mi=(fc+(kf*mt));
disp("Hz",mi,"Max, Inst. Frequency with FM");

kp=3;
//(b) mi2(t) with pm
mi2=fc+(mt*(kp/(2*%pi)));

disp("Hz",mi2,"Max, Inst. Frequency with PM");
