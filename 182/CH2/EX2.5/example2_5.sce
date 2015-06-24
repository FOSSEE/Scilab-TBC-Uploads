
// example 2-5 in page 25
clc;
//given data
V=[1.001 1.002 0.999 0.998 1.000];// 5 digital voltmeters reading in volts
//calculation
Vav=sum(V)/5;// average of 5 readings in volts
D=abs(V-Vav);//deviation of each reading from the average voltage
Dav=sum(D)/5;//average of deviation in volts
printf("Average measured voltage=%d V\n",Vav);
printf("Average deviation=%.4f V",Dav);
//result
//the Average measured voltage=1 V
//The Average deviation=0.0012 V