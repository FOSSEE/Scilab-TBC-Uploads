////Chapter 13  Steam Engines
////Example 13.9 Page No 289
//Input data
clc;
clear;
D=200*10^-3;                     //Steam engine cylinder in mm  
L=300*10^-3;                     //Bore of steam engine cylinder in mm  
rc=100/40;                        //Cut-off of the sroke
P1=7;                             //Admission pressure of steam in bar
Pb=0.38;                          //Exhaust pressure of steam in bar
K=0.8;                            //Diagram factor
N=200;                            //Indicator factor of engine
pi=3.142;                         //Constant value
//Indicated power of the engine  in rpm
A1=pi*(200*10^-3)^2/4;


//Calculation
Pm=((P1/rc)*(1+log(rc))-Pb);  //Therotical mean effective pressure Pm
Pma=round(Pm*K);                          //Actual mean effective pressure Pma
IP=(2*Pma*L*A1*N/60000)*10^5;      //Indicated power of steam engine in Kw


//Output
printf('Therotical mean effective pressure= %f bar \n ',Pm);
printf('Actual mean effective pressure= %f bar \n',Pma);
printf('Indicated power of steam engine= %f Kw \n',IP);
