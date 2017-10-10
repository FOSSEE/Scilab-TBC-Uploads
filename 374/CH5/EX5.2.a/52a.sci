//chapter 5 example 2//
clc
clear
//band gap energy=Eg,total efficiency=nT,voltage applied=V,external efficiency=ne//
Eg=1.43;//in ev//
V=2.5;//in volts//
nT=0.20;
ne=((nT*Eg)/V)*100;//external efficiency//
printf("\n external efficiency=%f percent\n",ne)
