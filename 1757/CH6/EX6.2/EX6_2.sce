//Example6.2  // design an inverting amplifier with a closed loop voltage gain of Av = 10
clc;
clear;
close;
Av = 10 ;
Vin = 0.8 ;  //V
Iin = 100*10^-6 ; // A
// in an non- inverting amplifier the input voltage Vin=V1=V2 because of vortual short effect then the i/p current In = Vin/R1
R1 = Vin/Iin;
disp('the value of resistance R1 is = '+string(R1)+' ohm');

// closed loop voltage gain of an non-inverting amplifier
//Av = Vo/Vin =  (1+R2/R1)
R2 = (Av-1)*R1;
disp('the value of resistance R2 is  = '+string(R2)+' ohm');
