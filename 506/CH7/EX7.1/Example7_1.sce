clear;
clc;

//caption:Diffusion of a pn junction

disp('At distance equal to x=xi at which N = concentration n of doped silicon wafers , the net impurity density is zero. Thus xi is the distance at which junction  is formed');

//Given Data
q = 1.6*(10^-19);//Charge of electron
yn=1300;//mobility of silicon
p = 0.5;//resistivity in ohm=cm
y=2.2;
t=2*3600;//in sec.
xi = 2.7*(10^-4);// Junction Depth in cm.

n = 1/(p*yn*q);//Concentration of doped silicon wafer
disp('cm^-3',n,'The concentration   n =');
disp('The junction is formed when N = n');

//y = xi/(2*(D*t)^0.5)
D=((xi)^2/((2*y)^2*t));//Diffusion Constant

disp('cm^2/sec',D,'The value of Diffusion Constant for Boron = ');

//end