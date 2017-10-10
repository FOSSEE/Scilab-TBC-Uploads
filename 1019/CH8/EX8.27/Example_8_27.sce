//Example 8.27
clear;
clc;

//Given
T=1300;//Temperature in K
R=8.314;//gas constant in J K^-1 mol^-1
p1=1.067*(10^5);//ratio of pressure of CO/CO2 for 1st reaction
p2=1.835*(10^5);//ratio of pressure of CO/CO2 for 2nd reaction

//To determine the values of delGo for required reaction
Kp1=p1^2;//equillibrium constant for the 1st reaction
Kp2=p2^2;//equillibrium constant for 2nd reaction
delGo1=-0.001*R*T*log(Kp1);//free energy change in kJ
delGo2=-0.001*R*T*log(Kp2);//free energy change in kJ
delGoA=delGo2-delGo1;//delGo for required reaction in kJ
mprintf('delGo for the formation of cobaltous silicate = %f kJ',delGoA);
//end