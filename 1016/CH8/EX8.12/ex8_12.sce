clc;clear;
//Example 8.12

//given data
W=0.6;//wavelength in angstrom
D1=6.45;
D2=9.15;
D3=13;//angles in degree

//calculation
d=W/(2*sind(D1));
disp(d,'interplanar spacing for (a) in angstrom');
d=W/(2*sind(D2));
disp(d,'interplanar spacing for (b) in angstrom');
d=W/(2*sind(D3))*2;//n=2 for (c)
disp(d,'interplanar spacing for (c) in angstrom')