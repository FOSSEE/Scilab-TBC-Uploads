//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 9.12\n\n\n");
// Chapter 9 : Gas Power Cycles
// Problem 9.12  (page no. 478) 
// Solution

//An air-standard Diesel engine
rc=16; //Compression Ratio Rc=v2/v3
v4byv3=2; //Cutoff ratio=v4/v3
k=1.4; //with the cycle starting at 14 psia and 100 F  //It is apparent incerease in compression ratio yields an increased cycle efficiency
T2=100+460; //temperatures converted to absolute temperatures;
ndiesel=1-((inv(rc))^(k-1)*(((v4byv3)^k-1)/(k*(v4byv3-1)))); //The efficiency of the diesel engine
printf("The efficiency of the diesel engine is %f percentage\n",ndiesel*100);
// T3/T2=rc^k-1 and T5/T4=(1/re^k-1) //re=expansion ratio=v5/v4
//But T4/T3=v4/v3=rc/re
//So,
T5=T2*(v4byv3)^k; //The temperature of the exhaust of the cycle //Unit:R
printf("The temperature of the exhaust of the cycle is %f R i.e. %f F",T5,T5-460);
