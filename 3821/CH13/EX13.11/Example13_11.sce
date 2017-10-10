////Chapter 13  Steam Engines
////Example 13.11 Page No 290
///Find Actual mean effective pressure
//Input data
clc;
clear;
D=240*10^-3;  //Steam engine bor
L=300*10^-3;  //Stroke of engine
N=220;         //Speed of engine 220 in rpm      
IP=36;         //Indicated power in Kw
Pb=1.3;        //Exhaust pressure in bar
re=2.5;        //Expansion ratio
K=0.8;         //Diagram factor
pi=3.142
A=((pi/4)*(D^2));



//Calculation
Pma=((IP*60000)/(2*10^5*L*A*N));  //Indicated power of steam engine in bar
Pm=Pma/K;                          //Actual mean effective pressure in bar
P1=((Pm+Pb)*re)/(1+log(re));  //Theoretical mean effective pressure in bar

//Output
printf('Indicated power of steam engine= %f bar \n',Pma);
printf('Actual mean effective pressure= %f bar \n',Pm);
printf('theoretical mean effective pressure= %f bar \n',P1);
