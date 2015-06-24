//Chapter 21, Problem 5
clc;
v2=120;                         //secondary voltage
r2=12;                          //resistance in ohm
i1=4;                           //primary current
i2=v2/r2;                       //secondary current
v1=v2*(i2/i1);                  //primary voltage
printf("Primary voltage = %f V",v1);
