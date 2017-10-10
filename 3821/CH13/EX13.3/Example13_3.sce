////Chapter 13  Steam Engines
////Example 13.2 Page No 285
///Find Mean Effective pressure
///Input data
clc;
clear;
P1=14;           //Steam is ssupplied in bar          
P6=6;            //Pressure at the end in bar
Pb=1.2;          //Pressure at back in bar
a=0.1;           
re=4; 
//From hyperbolic process 
b=0.4;

///Calculation
//Mean Effective pressure in N/m^2 
Pm=P1*((1/re)+((1/re)+a)*log((1+a)/((1+re)+a)))-Pb*((1+b)+(a+b)*log((a+b)/a));


//Output
printf('Mean Effective pressure= %f N/m^2 \n',-Pm);
