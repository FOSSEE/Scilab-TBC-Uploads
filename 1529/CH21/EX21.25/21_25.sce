//Chapter 21, Problem 25
clc;
V=24;                       //ac source
R1=15e3;                    //input resistance 
N=25/1;                     //turns ratio
Rin=15e3;                   //internal resistance
Rl=R1*(1/N)^2;              //load resistance
Rt=Rin+R1;                  //total input resistance
I1=V/Rt;                    //primary current
I2=I1*N;                    //secondary current
P=I2^2*Rl;                  //power dissipated
printf("(a) Load resistance = %d ohms\n\n",Rl);
printf("(b) Power dissipated in the load = %.1f mW",P*1000);
