

clear ;
clc;

printf("\t Example 11.3\n");
T1=276;          //temp.of air,K
aa=3.711;    //lennard jones constant or collision diameter,A
ab=2.827;    //lennard jones constant or collision diameter,A
b1=78.6;    //lennard jones constant,K
b2=59.7;      //lennard jones constant,K
a=(aa+ab)/2;    //effective molecular diameter for collisions of hydrogen and air,m
b=(b1*b2)^0.5;    //effective potential well depth,K
c=T1/b;    

d=0.8822;    //potential well function
Dab=1.8583*10^-7*T1^1.5/(a^2*d)*(1/2.016+1/28.97)^0.5;    //diffusion coefficient of hydrogen in air,m^2/s

printf("\t diffusion coefficient of hydrogen in air is :% -5e m^2/s an experimental value from table is 6.34*10^-5 m^2/s,so the prediction is high by 5 percent.\n",Dab);
//end