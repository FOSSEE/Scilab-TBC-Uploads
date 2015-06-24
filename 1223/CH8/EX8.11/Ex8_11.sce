clear;
clc;
//Example 8.11
R1=2;//KOhm
R2=R1;
Rl=.1;//KOhm
b=60;
Vbe=0.6;
Veb=0.6;
V1=15;
V2=V1;
iR1=(V1-Vbe)/R1;
//iR1=iR2=iE1=iE2
printf('\niR1=%.2f mA\n',iR1)
vo=10;
io=vo/Rl;
printf('\noutput current=%.3f mA\n',io)
iB3=100/61;
printf('\niB3=%.3fmA\n',iB3)
iR1=(V1-(10+Vbe))/R1;
printf('\ncurrent in R1=%.3f mA\n',iR1)
iE1=iR1-iB3;
printf('\niE1=%.3f mA\n',iE1)
iB1=iE1/(1+b);
iB1=iB1*1000;//micro A
printf('\niB1=%.3f microA\n',iB1)
iE2=(10-0.6+15)/R1;
printf('\niE2=%.3f mA\n',iE2)
iB2=iE2/(1+b);
iB2=iB2*1000;
printf('\niB2=%.3f microA\n',iB2)
Ii=iB2-iB1;
printf('\ninput current=%.3f microA\n',Ii)
Ii=Ii*0.001;//mA
Ai=io/Ii;
printf('\ncurrent gain=%.2f\n',Ai)
Ai=(1+b)*R1/(2*Rl);
printf('\npredicted current gain=%.2f\n',Ai)
