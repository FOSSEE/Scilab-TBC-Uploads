////Chapter 13  Steam Engines
////Example 13.12 Page No 291
///Find Indicated power of steam engine
//Input data
clc;
clear;
D=700*10^-3;             //Steam engine diameter in mm
L=900*10^-3;             //Steam engine diameter in mm
Ip=450;                   //Develop indicated power Kw
N=90;                     //Speed of steam engine in rpm
P2=12;                    //Pressure at cut-off in bar
P1=12;                    //Pressure at cut-off in bar
Pb=1.3;                   //Back pressure in bar
K=0.76;                   //Diameter factor
pi=3.142;
A=((pi/4)*0.7^2);

//Calculation
Pma=(Ip*60000)/(2*10^5*L*A*90); //Indicated power of steam engine in bar
Pm=Pma/K;                        //Theoretical mean effective pressure in bar
//using trial and error method
re=1/0.241;                             //Expansion ratio
///Output
printf('Indicated power of steam engine= %f bar \n',Pma);
printf('Theoretical mean effective pressure= %f bar \n',Pm);
printf('Expansion ratio= %f \n',re);
