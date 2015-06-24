

//example 3.25
//calculate total water to be delivered
clc;
//given
C1=0.2;              //consumptive requirement of crop for 1 to 15 days
C2=0.3;              //consumptive requirement of crop for 16 to 40 days
C3=0.5;              //consumptive requirement of crop for 41 to 50 days
C4=0.1;              //consumptive requirement of crop for 51 to 55 days
A=50;                //area of land
wr=5;                //presowing water requirement
R=3.5;               //rainfall during 36th and 45th day
w1=15*C1*100;
w2=25*C2*100;
w3=10*C3*100;
w4=5*C4*100;
w5=5*100;
W=w1+w2+w3+w4+w5;
ER=3.5*100;
q=(W-ER)*A;
mprintf("total water to be delivered=%i cubic metre.",q);


