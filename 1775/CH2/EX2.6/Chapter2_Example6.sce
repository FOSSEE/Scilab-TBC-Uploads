//Chapter-2, Illustration 6, Page 61
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
rv=14;//Compression ratio
c=0.06;//Cut-off percentage
y=1.4;//Ratio of specific heats

//CALCULATIONS
rc=1.78;//Cut-off ratio
nth=(1-(((rc^y)-1)/((rv^(y-1))*y*(rc-1))))*100;//Thermal efficiency

//OUTPUT
mprintf('Air standard efficiency is %3.1f percent',nth)







//==============================END OF PROGRAM=================================
