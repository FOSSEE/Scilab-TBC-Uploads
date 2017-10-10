////Chapter No 14 Air Standard Cycles
////Example No 14.3 Page No 303 
///Find pressure at intermediate salient points
//Input data
clc;
clear;
//Refer figure

T1=300;                   //Carnot engine work in minimum temperature in kelvin
T2=750;                   //Carnot engine work in maximum temperature kelvin
P2=50;                    //pressure of carnot engine N/m^2
P4=1;                     //pressure of carnot engine N/m^2
//Considering air as the working fluid therefore 
R=0.287;                  //Air as the working fluid in KJ/Kg K
Cp=1.005;                 //KJ/Kg K
Cv=0.718;                 //KJ/Kg K
K=1.4;
gamma1=1.4;

//Calculation
//T2/T1=(P2/P1)**(gamma1-1)/gamma1;
P1=P2*(T1/T2)^(gamma1/(gamma1-1)); //Pressure at intermediate salient points(1-2) in bar
P3=P4*(T2/T1)**(gamma1/(gamma1-1)); //Pressure at intermediate salient points(3-4) in bar
QS=R*T2*log(P2/P3 );         //Heat supplied and rejected per Kg of air  in KJ/Kg
QR=R*T1*log(P1/P4 );         //Heat supplied and rejected per Kg of air  in KJ/Kg
W=QS-QR;                          //Work done in KJ/Kg
eta=(1-(T1/T2));                  //Thermal  of the carnot cycle

//Output
printf('pressure at intermediate salient points(1-2)= %f bar \n',P1);
printf('pressure at intermediate salient points(3-4)= %f bar \n',P3);
printf('heat supplied and rejected per Kg of air(2-3)= %f KJ/Kg \n',QS);
printf('heat supplied and rejected per Kg of air(4-1)= %f KJ/Kg \n',QR);
printf('work done= %f KJ/Kg \n',W);
printf('thermal  of the carnot cycle= %f percent \n',100*eta);
