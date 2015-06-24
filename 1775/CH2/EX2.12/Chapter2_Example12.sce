//Chapter-2, Illustration 12, Page 69
//Title: Gas Power Cycles
//=============================================================================
clc
clear

//INPUT DATA
rv=16;//Compression ratio
rp=1.5;//Pressure ratio
y=1.4;//Ratio of specific heats
cp=8;//Cut-off percentage

//CALCULATIONS
rc=2.2;//Cut-off ratio
ntd=(1-((rp*(rc^y)-1)/((rv^(y-1)*((rp-1)+(y*rp*(rc-1)))))))*100;//Dual cycle efficiency

//OUTPUT
mprintf('Ideal efficiency of engine is %3.1f percent',ntd)






//==============================END OF PROGRAM=================================
