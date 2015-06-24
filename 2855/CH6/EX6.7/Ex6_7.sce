//chapter 6
//page no157
//Ex 6_7
//given
clear;
clc;
R=400;          //in mA
nEO=25;         //in mW
nlaser=nEO*10^-3*R*10^-3;
printf("\n nlaser = %0.2f ",nlaser);
 Tone=(40*10^-12)*(80*10^3)/nlaser;
printf("\n Tone = %0.0f micros ",Tone*10^6);
 BWone=1/(2*%pi*Tone);
printf("\n BWone = %0.0f Hz ",BWone);
Tzero=(40*10^-12)*80*10^3/nlaser;
BWzero=1/2/%pi/Tzero;        //Hz
printf("\n BWzero = %0.0f Hz ",BWzero);
//answer misprinted
