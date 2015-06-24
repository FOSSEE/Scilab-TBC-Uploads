// Example6.4   // Design a op-amp circuit to provide the output voltage Vo = -2(3 V1 +4 V2 +2 V3)
clc;
clear;
close;
// Vo = -2(3 V1 + 4 V2+ 2 V3);      equation 1
// the output of the summer circuit is given as
// Vo = -R2((Via/Ria)+(Vib/Rib)+(Vic/Ric))    equation 2

// compare equation 1 and 2  of Vo we get 

//  (R2/Ria)= 6 ;
//  (R2/Rbi=8 ;
//  (R2/Ric)=4 ;

R2 = 120*10^3 ;   // we choose then 

Ria = R2/6 ;
disp('the value of resistance Ria is  = '+string(Ria)+' ohm');

Rib = R2/8 ;
disp('the value of resistance Rib is  = '+string(Rib)+' ohm');

Ric = R2/4 ;
disp('the value of resistance Ric is  = '+string(Ric)+' ohm');
