

//example 4.67
//calculate return period of flood of 9950 cumec/s
clc;funcprot(0);
//given
xavg=4200;      //mean
sigma=1705;     //standard deviation
xt=9550;        //flood value
K=(xt-xavg)/sigma;
yt=1.2825*K+0.577;
l=%e^(%e^(-yt));
T=l/(l-1);
T=round(T*100)/100;
mprintf("Return period of flood of 9950 cumec/s=%f years.",T);

