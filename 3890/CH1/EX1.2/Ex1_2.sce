//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 1.2
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

I1=60;              //current during duration 0 to 10 sec in Ampere
t1max=10;t1min=0;              //time taken by current I1 in sec
I2=25;              //current during duration 10 to 30 sec in Ampere
t2max=30;t2min=10;              //time taken by current I2 in sec
I3=50;              //current during duration 30 to 40 sec in Ampere
t3max=40;t3min=30;              //time taken by current I3 in sec
I4=-40;              //current during duration 45 to 40 sec in Ampere
t4max=45;t4min=40;              //time taken by current I4 in sec
I5=-20;              //current during duration 60 to 45 sec in Ampere
t5max=60;t5min=45;              //time taken by current I5 in sec
I6=0;              //current during duration 100 to 60 sec in Ampere
t6max=100;t6min=60;              //time taken by current I6 in sec

T=100;                                  //total time period in sec
sa=(I1*(t1max-t1min))+(I2*(t2max-t2min))+(I3*(t3max-t3min))+(I4*(t4max-t4min))+(I5*(t5max-t5min))+(I6*(t6max-t6min));    //algebric sum of area under positive and negative currents in A s
avg=sa/T;                                    //average value of current in ampere
rms=((1/T)*((I1^2)*(t1max-t1min)+(I2^2)*(t2max-t2min)+(I3^2)*(t3max-t3min)+(I4^2)*(t4max-t4min)+(I5^2)*(t5max-t5min)+(I6^2)*(t6max-t6min)))^(1/2);

printf('the average value of current waveform is %f in Ampere\n',avg)
printf('the rms value of current waveform is %f in ampere\n',rms)

