//chapter 5 example 1//
clc
clear
//band gap energy=Eg,voltage applied=V,total effeciency of an injection laser=nT//
Eg=1.43;//in ev//
V=2.5;//in volts//
nT=0.18;
ne=((nT*Eg)/V)*100;
printf("\n external power efficiency=%f percent\n",ne)