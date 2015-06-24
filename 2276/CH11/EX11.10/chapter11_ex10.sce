clc
clear

//input
rl=10;//load resistance in kiloohms
//for Ie= 0 ,0.8,2.0,2.8,4.0 Ic =0,0.78,1.95,2.73,3.9 respectively in mA
//taking any two set of values
ic1=3.9;
ic2=0;
ie1=4;
ie2=0;

//calculations
cg=(ic1-ic2)/(ie1-ie2);//current gain

//output
mprintf('the current gain is %3.3f',cg)
