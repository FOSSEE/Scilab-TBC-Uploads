clc;
//page 2-5
//Example 2.1
//The value of inductor is 40*10^(-6) Henry and the value of capacitor is 12*10^(-9) Farad. Given frequency is 5*10^3 Hz
L=40*10^(-6);
C=12*10^(-9);
fm=5000;
fc=1/(2*%pi*sqrt(L*C));
disp(+'kHz',fc/10^3,'fc=');
disp(+'kHz',(fc+fm)/10^3,'Upper Sideband frequency is ');
disp(+'kHz',(fc-fm)/10^3,'Loweer Sideband frequency is ');
fusb=234.72037;
flsb=224.72037;
disp(+'kHz',fusb-flsb,'Bandwidth is ');
