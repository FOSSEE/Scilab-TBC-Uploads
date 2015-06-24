clc;
r=1*10**3;
I=10*10**-3;
V=30;
//I=30/(R+r)
R=(V/I)-r;//when dark
disp('Kohm',R*10**-3,"R=");
R=100*10**3;//when illuminated
Id=(V/(r+R));
disp('mA',Id*10**3,"Id=");
