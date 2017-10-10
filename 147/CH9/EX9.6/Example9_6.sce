//Drain supply Vdd, Drain current Idq, Source to gate voltage Vgsq
close();
clear;
clc;
Vdd = 8;//V
Vgsq = 4;//V
Idq = 1*10^(-3);//A
R1 = 5*10^(6);//ohm
R2 = 3*10^(6);//ohm
//By locating Q point 
Vdsq = 6;
Vgg = R1*Vdd/(R1+R2);
//By applying KVL aound the gate-source loop
Rs = (Vgg - Vgsq)/Idq;
//Using KVL around drain-source loop
Rd = (Vdd-Vdsq-Idq*Rs)/Idq;
mprintf('Vdsq = %0.0f V\nVgg = %0.0f V\nRs = %0.0f k ohm \nRd = %0.0f k ohm ',Vdsq,Vgg,Rs/1000,Rd/1000);