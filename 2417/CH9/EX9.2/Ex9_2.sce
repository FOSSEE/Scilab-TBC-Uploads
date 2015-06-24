//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 9.2\n\n\n");
// Chapter 9 : Gas Power Cycles
// Problem 9.2  (page no. 463) 
// Solution

cv=0.172; //Unit:Btu/(lbm*R) //Specific heat constant
Rc=7; //Compression Ratio Rc=v2/v3
k=1.4; //It is apparent incerease in compression ratio yields an increased cycle efficiency
T2=70+460; //for converting to R //Conversion of unit
//For 1000 F
T4=1000+460; //temperatures converted to absolute temperatures;
T3byT2=Rc^(k-1); //Unit less
T3=T3byT2*T2;
qin=cv*(T4-T3); //Unit:Btu/lbm //Heat added
//Qr=cv*(T5-T2)*(T5/T4)=(v2/v3)^(k-1)
Qr=(inv(Rc))^(k-1); //Unit:Btu/lbm //Heat rejected
T5=T4*Qr;
Qr=cv*(T5-T2); //Unit:Btu/lbm //Heat rejected
printf("The net work out is %f Btu/lbm\n",qin-Qr);
notto=((qin-Qr)/qin)*100; //The efficiency of otto cycle 
printf("The efficiency of otto cycle is %f percentage",notto);
//The value agrees with the results of problem 9.1
