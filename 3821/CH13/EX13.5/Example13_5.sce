////Chapter 13  Steam Engines
////Example 13.5 Page No 286
///Find Mean effective pressure
//Input data
clc;
clear;
a=25;                  //Area of indicator diagram cm^2
Vs=0.15;               //swept volume m^2
S=1;                   //Scale in cm 
cm=0.02;               //pressure axis m^3


///Calculation
b=Vs/cm;               //Base length of diagram 
Pm=a/b*S;              //Mean effective pressure

//Output
printf('Base length of diagram=%f bar \n',b);
printf('Mean effective pressure= %f bar \n',Pm);
