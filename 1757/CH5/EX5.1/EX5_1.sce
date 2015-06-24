//Example5.1 // find the total offset voltage of feedback op-amp
clc;
clear; 
close;
Vos = 4 ; //mV  // input offset volt
Ios = 150*10^-3 ; // input offset current
R1 = 5 ; //kilo ohm  // input resistance
R2 = 500 ; //kilo ohm  // feedback resistance

// the output voltage (Vo) of an op-amp circuit due to input offset voltage (Vos) is
Vo1 = ((R1+R2)/(R1)*Vos) ;
disp(' the output voltage (Vo) of an op-amp circuit due to input offset voltage (Vos) is = '+string(Vo1)+' mV ');

// the output voltage (Vo) of an op-amp circuit due to input offset current (Ios) is
Vo2 = R2*Ios ;
disp(' the output voltage (Vo) of an op-amp circuit due to input offset current (Ios) is = '+string(Vo2)+' mV ');

// the total offset voltage is
Vo = Vo1+Vo2 ;
disp(' the total offset voltage (Vo) of an op-amp circuit is = '+string(Vo)+' mV ');
