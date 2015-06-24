

//example 4.65
//calculate recurrence interval of 10 minutes storm using Gumbel's method
clc;funcprot(0);
//given
xavg=1.65;      //mean of data
sigma=0.45;     //standard deviation
x=3;
y=1.2825*(x-xavg)/sigma+0.577;
l=%e^(%e^(-y));
T=l/(l-1);
T=round(T*10)/10;
mprintf("recurrence interval of 10 minutes storm=%f years.",T);
