//Calculating synchronous speed and speed of a rotor
//Chapter 4
//Example 4.3
//page 289
clear;
clc;
disp("example 4.3");
disp("induction motor is to be run at 1440 rpm")
P=10;   //poles of alternator
N=600;   //speed of alternator
f=(P*N)/120   //frequency
printf("frequency=%d",f);
disp("when P=2");p=2
Ns=(120*f)/p;  //synchronous speed
printf("Syhchronous speed,Ns=%d \n",Ns);
disp("when P=4");p=4;
Ns=(120*f)/p;  //synchronous speed
printf("Syhchronous speed,Ns=%d \n",Ns);
//speed of rotor(1440) is less than synchronous speed 1500, therefore P=4
disp("speed of rotor(1440) is less than synchronous speed 1500, therefore P=4\n")
Ns=1500;
Nr=1440;
S=((Ns-Nr)/Ns)*100
printf("\nslip is %d percent and number of poles is 4",S)