clc;
//page no 141
//prob no. 4.4
//A phase modulator is given with kp=2rad/V 
kp=2;
//Peak phase deviation of 60 degree
//Converting degree in radian 
phi=(2*%pi*60)/360;
//Determination of peak voltage that cause that deviation 
Vp=phi/kp;
//Determination of rms voltage
Vrms=Vp/(sqrt(2));
disp('V',Vrms,'The rms voltage that cause deviation is ');