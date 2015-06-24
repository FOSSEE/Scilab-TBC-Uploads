//Chapter 5
//page no 131
//given
clc;
Di=155;         //in Mb/s
sl=10^-3*Di*10^6;           //in  bitstream
//PRBS=2^x-1=sl;
x=log(sl+1)/log(2);//equation is made to pick value of x
printf("\n PRBS =2^%0.0f -1 \n",x);
