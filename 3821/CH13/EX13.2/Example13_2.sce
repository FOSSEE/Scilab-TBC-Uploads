////Chapter 13  Steam Engines
////Example 13.2 Page No 283
///Find Therotical mean effective pressure
//Input data
clc;
clear;
a=5/100;     //Engine cylinder of the stroke valume in %
P1=12;       //Pressure of the stream
rc=3;        //Cut-off is one-third
Pb=1.1;      //Constant the back pressure in bar

//Calulation
//Therotical mean effective pressure Pm
Pm=P1*(1/rc+((1/rc)+a)*log((1+a)/((1/rc)+a)))-Pb; 

//Output
printf('Therotical mean effective pressure=%f N/m^2 \n',Pm);
