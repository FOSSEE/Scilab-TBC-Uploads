//Chapter-2, Illustration 11, Page 68
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
rv=21;//Compression ratio
re=10.5;//Expansion ratio
y=1.4;//Ratio of specific heats

//CALCULATIONS
rc=rv/re;//Cut-off ratio
nth=(1-(((rc^y)-1)/((rv^(y-1))*y*(rc-1))))*100;//Air standard efficiency

//OUTPUT
mprintf('Cut-off ratio is %3.0f \n Air standard efficiency is %3.2f percent',rc,nth)








//==============================END OF PROGRAM=================================
