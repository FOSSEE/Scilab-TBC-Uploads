////Chapter 13  Steam Engines
////Example 13.14 Page No 294
///Example Mechanical efficiency
//Input data
clc;
clear;
D=300*10^-3;                //steam engine bor
L=400*10^-3;                //stroke 
Db=1.5;                     //effective brake diameter
W=6.2*10^3;                 //net load on the brake
N=180;                       //speed of engine in rpm
Pma=6.5*10^3;               //mean effective pressure in bar
pi=3.142;
A=((pi/4)*0.3^2); 
dr=0;
S=0;

//Calculation
Ip=((2*Pma*L*A*N)/60000)*100; //Indicated power of steam engine in Kw
T=(W-S)*((Db+dr)/2);          //Torque in Nm
Bp=2*pi*N*T/ 60000;           //Break power Kw
eta=(Bp/Ip)*100;              //Mechanical efficiency in%


//Output
printf('Indicated power of steam engine= %f Kw \n',Ip);
printf('Torque=%f Nm \n',T);
printf('Break power= %f Kw \n ',Bp);
printf('Mechanical efficiency= %f percent \n ',eta);
