// Example6.5   // Design a summing amplifier circuit to provide the output voltage Vo = -(7 V11 + 15 V12 + 10 V13 + 3 V14)
clc;
clear;
close;
R2 = 630*10^3 ;  // Assume feedback resistance
// Vo = -(7 V11 + 15 V12 + 10 V13 + 3 V14);                    equation 1
// the output of the summer circuit is given as
// Vo = -R2((Via/Ria)+(Vib/Rib)+(Vic/Ric)+(Vid/Rid))           equation 2

// compare equation 1 and 2  of Vo we get 

//  (R2/Ria)= 7 ;
//  (R2/Rbi= 15 ;
//  (R2/Ric)= 10 ;
//  (R2/Rid)= 3 ;

Ria = R2/7 ;
disp('the value of resistance Ria is  = '+string(Ria)+' ohm');

Rib = R2/15 ;
disp('the value of resistance Rib is  = '+string(Rib)+' ohm');

Ric = R2/10 ;
disp('the value of resistance Ric is  = '+string(Ric)+' ohm');

Rid = R2/3 ;
disp('the value of resistance Rid is  = '+string(Rid)+' ohm');
