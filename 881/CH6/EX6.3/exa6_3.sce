clc;
//Example 6.3
//Page no 231



//Solution

fbfo=10; //MHz

//(a)

disp("(a)The solution is identical to that provieded in example 6-2 ");

Fi=30-20; //MHz
Ff=30.005-20; //MHz

disp('MHz',Ff,"MHz to",Fi,"Fif = ");

disp("The demodulated information signal spectrum is simply the difference between the intermediate frequency band and the BFO frequency");

fm1=Fi-fbfo;
fm2=Ff-fbfo;

disp('kHz',(fm2*(10^3)),"kHz to",fm1,"fm = ");

//(b)

disp("(b) ");

FI=30.0006-20.0004; //MHz
FF=30.0056-20.0004; //MHZ

disp('MHz',FF,"MHz to",FI,"Fif = ");

disp("The BFO frequency will also automatically adjust proportionally to 10.0002MHz, producing a demodulated information signal of ");

Fm=FI-10.0002; //MHz
Fm1=FF-10.0002; //MHz

disp('kHz',(Fm1*(10^3)),"kHz to",Fm,"fm = ");
