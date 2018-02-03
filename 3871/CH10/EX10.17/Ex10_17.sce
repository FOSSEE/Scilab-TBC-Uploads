//===============================================================
//Chapter 10 Example 17


clc;clear all;

//variable declaration 
r    = 0.0250;        //resistance in Ω
R    = 1.0125;        //resistance in Ω
S    = 1        //sensitivity 
P1    = 10;        //resistance in Ω
Q1    = 10;        //resistamce in Ω
P2    = 9.95;        //resistance in Ω
Q2    = 10.05;        //resistamce in Ω
l   = 100;

//calculations
r1    = r/100;        //resistance in Ω per scale division 
x1    = P1/Q1;    
x2    = P2/Q2;    
//P/Q    = (R+(l1*r))/(S+(l-l1)*r)
//(s*x)+((l-l1)*r) = R+(l1*r)
//(S*x)+(l*r)-(l1*r) = R+(L1*r)
//(S*x)+(l*r)-R = (l1*r)+(l1*r)
l1     = ((S*x1)+(l*r1)-R)/(r1+r1);        //scale divisions 
l12    = ((S*x2)+(l*r1)-R)/(r1+r1);        //scale divisions

//result
mprintf("hence the balance is obtainde at %3.0f and 75 scale divisions",l1);
mprintf("\nhence the balance is obtainde at %3.0f and 95 scale divisions",l12);
	
