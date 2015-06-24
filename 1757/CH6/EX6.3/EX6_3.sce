//Example6.3 // design an non-inverting amplifier with colsed loop gain of 5 limited voltage of -5 V <= Vo <= 5 V  and maximum i/p c/n 50 uA
clc;
clear;
close;
R1 = 8*10^3 ; // ohm
R2 = 72*10^3 ; // ohm
Iin = 50*10^-6 ; // A
Vo = 5 ; // V 

// closed loop gain
//Av = Vo/Vin = (1+R2/R1)
Av = 1+(R2/R1);
// but  
Av = 5 ;
// then
// (R2/R1) = 4 ;

// the output voltage of the amplifier is Vo = 5 V 
//i.e
Vin = 1 ; // V
// Iin = Vin/R1 ;
R1 = Vin/Iin ;
disp('the value of resistance R1 is  = '+string(R1)+' ohm');

R2 = 4*R1 ;
disp('the value of resistance R2 is  = '+string(R2)+' ohm');

// the output current I2 is given as
I2 = (Vo-Vin)/R2 ;
disp('the output current I2 is  = '+string(I2)+' A');
