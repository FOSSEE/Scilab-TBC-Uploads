//Calculate efficiency of transformer //Chapter 3
//Example 3.24
//page 233
clear;
clc;
disp("Example 3.24")
kVA=50;                          //rating of the transformer
V1=6360;                          //primary voltage rating
V2=240;                            //secondary voltage rating
pf=0.8
coreloss=2;                      //core loss in kilo watt from open circuit test
Culoss=2;                        //copper loss at secondary current of 175A
I=175;                            //current in amperes
I2=(kVA*1000)/V2;
printf("Full load secondary current,I2=%fA",I2);
effi=(kVA*pf*100)/((kVA*pf)+coreloss+(Culoss*(I2/I)^2))
printf("\nEfficiency=%fpercent",effi)
