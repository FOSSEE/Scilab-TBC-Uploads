clc;
//Example 15.6
//Page No 652


//solution

a=9;
b=4.5;
f=4; 
c=3*10^10;

disp("(a)Cutoff frequency, ");

fc=(c/(2*a));

fc=fc/10^9;

disp('GHz',fc,"fc = ");

disp("(b)Characteristic impedence, ");

Zte=(377/[sqrt(1-({fc/f}^2))]);

disp('ohm',Zte,"Zte = ");
