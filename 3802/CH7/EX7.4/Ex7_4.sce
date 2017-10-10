//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex7_4.sce.

clc;
clear;
P=75e3;                            //power rating of transformer in KVA
Np=500;                             //number of Primary turns
Ns=100;                            //number of secondary turns
rp=0.4;                             //primary winding resistance in ohms
rs=0.02;                           //secondary  winding resistance in ohms
xp=1.5;                           //primary winding leakage reactance in ohms
xs=0.045;                         //secondary winding leakage reactance in ohms
Vs=2200;                            //supply voltage in volts

//case1
printf("\n (a)")
Re=rp+(Np/Ns)^2*rs;                      //Equivalent resistance in ohms
Xe=xp+(Np/Ns)^2*xs;                       //Equivalent leakage reactance in ohms
Ze=sqrt(Re^2+Xe^2);
printf("\n  Equivalent impedance referred to prinmary side=%1.3f ohms\n",Ze)

//case2
printf("\n (b).1")
I1=P/Vs;                                       //full load primary current in A
cos_pi2=0.8;
sin_pi2=sind(acosd(0.8));
percentage_voltage_reg=((I1*((Re*cos_pi2)+(Xe*sin_pi2)))/Vs)*100;
printf("\n  Voltage regulation for 0.8 power factor lagging=%1.2f percentage \n",percentage_voltage_reg)
NL_secondary_voltage=(Ns/Np)*Vs;                                                     //NL means "no load"
del_V=(NL_secondary_voltage*percentage_voltage_reg)/100;
FL_secondary_voltage=(NL_secondary_voltage)-(del_V);
printf("\n  Secodary terminal voltage at FL 0.8 power factor lagging=%3.3f V \n",FL_secondary_voltage)

//case3 
printf("\n (b).2")
percentage_voltage_reg=((I1*((Re*cos_pi2)-(Xe*sin_pi2)))/Vs)*100;
printf("\n  Voltage regulation for 0.8 power factor leading=%1.3f percentage \n",percentage_voltage_reg)
del_V=(NL_secondary_voltage*percentage_voltage_reg)/100;
FL_secondary_voltage=(NL_secondary_voltage)-(del_V);
printf("\n  Secodary terminal voltage at FL 0.8 power factor leading=%4.4f V \n",FL_secondary_voltage)
//The anwser vary dueto roundoff error

