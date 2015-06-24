    clc;clear;
//Example 8.10

//given values
D=12;//glancing angle in Degree
n=1;
d=3.04*10^-10;//grating space in m

//calculation 
W=(2*d*sind(D));
disp((W/(10^-10)),'the wavelength in Angstrom');
D3=asind((3*W)/(2*d));
disp(D3,'the angle for third order reflection in degrees')