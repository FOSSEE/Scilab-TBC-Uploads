clc;clear;
//Example 9.2

//given data
V=5000;//applied voltage in V
e=1.602*10^-19;//the charge on electron in C
m=9.12*10^-31;//mass of electron in kg
d=2.04*10^-10;//distance in m

//calculations
p=sqrt(2*m*e*V);
disp(p,'momentum in kg-m/s^2');
W=12.25/sqrt(V);
disp(W,'de broglie wavelength in angstrom');
v=1/(W*10^-10);
disp(v,'the wave number in m');
D=asind((W*10^-10)/(2*d));
disp(D,'the Bragg angle in degrees')