//Example5.7 // Determine the bias current of inverting and non-inverting
clc;
clear;
close;
Ios = 5 ; //nA // input offset current
Ib = 30 ; //nA // input bias current

// the input bias current of an op-amp is 

//Ib =(Ib1+Ib2)/(2);

// the offset current Ios is define as

//Ios = abs(Ib1-Ib2) ;

Ib1=Ib-(Ios/2);
disp('The current in the inverting input terminal is = '+string(Ib1)+' nA ');

Ib2 =Ib+(Ios/2);
disp('The current in the non-inverting input terminal is= '+string(Ib2)+' nA ');
