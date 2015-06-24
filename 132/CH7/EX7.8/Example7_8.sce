//Example 7.8
//Program to Calculate
//(a)Minimum Emitter Current & corresponding Vce
//(b)Maximum Emitter Current & corresponding Vce
clear;
clc ;
close ;
//Given Circuit Data
Vcc=6; //V
Vbe=0.3; //V
Rc=50; //Ohms
Rb=10*10^3; //Ohms
Re=100; //Ohms
Beeta1=50;
Beeta2=200;
//Calculation CASE-1: Minimum Emitter Current & corresponding Vce
Iemin=(Vcc-Vbe)*(Beeta1+1)/(Rb+(Beeta1+1)*Re);
Vcemin=Vcc-(Rc+Re)*Iemin;
//Calculatioen CASE-2: Maximum Emitter Current & corresponding Vce
Iemax=(Vcc-Vbe)*(Beeta2+1)/(Rb+(Beeta2+1)*Re);
Vcemax=Vcc-(Rc+Re)*Iemax;
//Displaying The Results in Command Window
printf("\n\t The Minimum Emitter Current Ie(min) = %f mA .",Iemin/10^(-3));
printf("\n\t The Corresponding Vce = %f V .",Vcemin);
printf("\n\t The Maximum Emitter Current Ie(max) = %f mA .",Iemax/10^(-3));
printf("\n\t The Corresponding Vce = %f V .",Vcemax);