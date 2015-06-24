clc;
// page no 212
// prob no 6.6.2
//Voltage controlled Clapp oscillator
// Capacitor is in pF and inductor in uH
C1=300; C2=300; Cc=20; L=100;
// A) With zero applied bias,the total tuning capacitor is
Vd1=0;a=0.5;Co=20;
Cd1=Co/(1-(Vd1/0.5))^a;
Cs1=1/((1/C1)+(1/C2)+(1/Cc)+(1/Cd1));
disp('pF',Cs1, +'1.The total tuning capacitor is');
// The frequency of oscillation is
f=1/(2*%pi*sqrt(L*10^-6*Cs1*10^-12));
disp('Hz',f,'2.The frequency of oscillation is');
// B) With a reverse bias of -7 v, the tuning capacitance becomes
Vd2=-7;
Cd2=Co/(1-(Vd2/0.5))^a;
Cs2=1/((1/C1)+(1/C2)+(1/Cc)+(1/Cd2));
disp('pF',Cs2, +'3.The total tuning capacitor is');
// The frequency of oscillation is
f=1/(2*%pi*sqrt(L*10^-6*Cs2*10^-12));
disp('Hz',f,'4.The frequency of oscillation is');