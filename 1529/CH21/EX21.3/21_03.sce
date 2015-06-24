//Chapter 21, Problem 3
clc;
N=8/1;                  //turns ratio
i1=3;                   //primary current
v1=240;                 //primary voltage
v2=v1/N;                //secondary voltage
i2=N*i1;                //secondary current
printf("Secondary voltage  = %f V\n\nSecondary current = %f A",v2,i2);
