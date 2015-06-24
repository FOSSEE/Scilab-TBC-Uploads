clc;
patm = 14.5 ; // atmospheric pressure in psia
pgauge = 2.5; // gauge pressure in psia
A = 10; // Area of the piston in in^2
g=9.80665; // Acceleration due to gravity in m/s^2
p = patm + pgauge; //total pressure of gas
m=(p-patm)*A ; //mass of the piston
disp("lbm",m,"Mass of the piston =","In English units");
p=(p*0.454*g)/(0.0254^2); // conversion of English unit to SI units
patm=(patm*0.454*g)/(0.0254^2); // conversion of English unit to SI units
m = ((p-patm)*(A*2.54^2*10^-4))/g; // Mass of the piston
disp("kg",m,"Mass of the piston =","In SI units");
