//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 10 ; Example 10.4
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
S_Ifmax_CTratio=[11 3000 400/5;4 2000 200/5;6 100 200/5];                  //Apparent power in MVA , maximum fault current in Amperes and CT ratio
V=34.5;                                                                    //RMS line to line voltage in kVolts
Tbreaker=0.083;                                                            //Operating time of breaker for 5 cycles in Second
Tcoordination=0.3;                                                         //Co-ordination time of the breaker in Seconds
Il3=S_Ifmax_CTratio(3,1)*10^(3)/(V*sqrt(3)*S_Ifmax_CTratio(3,3));          //Maximum secondary current of breaker 3 in Ampere
Ts3=3;                                                                     //From figure 10.12 the Tap Setting
Il2=(S_Ifmax_CTratio(2,1)+S_Ifmax_CTratio(3,1))*10^(3)/(V*sqrt(3)*S_Ifmax_CTratio(2,3));//Maximum secondary current of breaker 2 in Ampere
Ts2=5;                                                                     //From figure 10.12 the Tap Setting
Il1=(S_Ifmax_CTratio(1,1)+S_Ifmax_CTratio(2,1)+S_Ifmax_CTratio(3,1))*10^(3)/(V*sqrt(3)*S_Ifmax_CTratio(1,3));//Maximum secondary current of breaker 1 in Ampere
Ts1=5;                                                                     //From figure 10.12 the Tap Setting
Fault_pickupcrnt3=S_Ifmax_CTratio(2,2)/(Ts3*S_Ifmax_CTratio(3,3));         //The fault-to-pickup current ratio at Breaker 3
t3=0.05;                                                                   //Relay operating time from figure 10.12 in Seconds
tds3=0.5;                                                                  //Time-dial settings from figure 10.12
Fault_pickupcrnt2=S_Ifmax_CTratio(2,2)/(Ts2*S_Ifmax_CTratio(2,3));         //The fault-to-pickup current ratio at Breaker 2
t2=t3+Tbreaker+Tcoordination;
tds2=2;                                                                    //Time-dial settings from figure 10.12
Fault_pickupcrnt2=S_Ifmax_CTratio(1,2)/(Ts2*S_Ifmax_CTratio(2,3));         //The fault-to-pickup current ratio at Breaker 1
t2=0.38;                                                                   //Relay operating time from figure 10.12 in Seconds
tds1=3;                                                                    //Time-dial settings from figure 10.12
Fault_pickupcrnt1=S_Ifmax_CTratio(1,2)/(Ts2*S_Ifmax_CTratio(1,3));
t1=t2+Tbreaker+Tcoordination;
printf('\nBreaker\tTS\tTDS');
printf('\nB1\t%d\t%0.1f',Ts1,tds1);
printf('\nB2\t%d\t%0.1f',Ts2,tds2);
printf('\nB3\t%d\t%0.1f',Ts3,tds3);
